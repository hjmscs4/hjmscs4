function U-02() {
    CONF="/etc/security/pwquality.conf"
    
    # 보안 기준 정의 (예시)
    MINLEN_POLICY=9   # 최소 길이 9 이상
    CREDIT_POLICY=-1  # 문자 클래스 크레딧 최소 -1 (의무화)

    if [[ ! -f "$CONF" ]]; then
        func_print_msg "오류: $CONF 파일이 존재하지 않습니다." $RED
        return 1
    fi
    
    func_print_msg "--- 패스워드 복잡도 설정 확인 ---"

    # awk를 사용하여 설정 추출 및 배열에 저장
    declare -A settings # 연관 배열 선언 (Bash 4.0 이상)
    
    # awk를 통해 설정값만 추출하여 Bash 배열에 저장
    # (awk의 printf 대신 Bash의 변수 할당을 위해 echo/pipe 사용)
    settings_output=$(awk '
    BEGIN {FS="[=[:space:]]+"}
    /^\s*$/ {next} # 빈 줄 건너뛰기

    # 1. 주석 처리된 설정 줄 확인 (# minlen 형태)
    $1 ~ /^#$/ && $2 ~ /^(minlen|dcredit|ucredit|lcredit|ocredit)$/ {
        # 형식: 설정이름:값
        print $2 ":" $3
        next
    }

    # 2. 주석이 없는 일반 설정 줄 확인 (minlen 형태)
    $1 ~ /^(minlen|dcredit|ucredit|lcredit|ocredit)$/ {
        # 형식: 설정이름:값
        print $1 ":" $2
    }
    ' "$CONF")

    # 추출된 문자열을 Bash 연관 배열에 로드
    while IFS=: read -r key value; do
        settings[$key]=$value
    done <<< "$settings_output"

    # --- 📋 보안 정책 판단 로직 ---
    POLICY_OK=1 # 정책 충족 여부 플래그 (1: 양호, 0: 취약)
    
    # 1. minlen (최소 길이) 검사
    if [[ ${settings[minlen]} -ge $MINLEN_POLICY ]]; then
        func_print_msg "minlen (${settings[minlen]}): ${MINLEN_POLICY} 이상 (양호)" $GREEN
    else
        func_print_msg "minlen (${settings[minlen]}): ${MINLEN_POLICY} 이상 (취약)" $RED
        POLICY_OK=0
    fi

    # 2. dcredit, ucredit, lcredit, ocredit 검사 (문자 클래스)
    for credit_type in dcredit ucredit lcredit ocredit; do
        current_val=${settings[$credit_type]}
        
        # 값이 정책(-1)보다 작거나 같으면 (예: -1은 -1보다 작거나 같다) 양호
        if [[ $current_val -le $CREDIT_POLICY ]]; then
            func_print_msg "${credit_type} (${current_val}): ${CREDIT_POLICY} 이하 (양호)" $GREEN
        else
            func_print_msg "${credit_type} (${current_val}): ${CREDIT_POLICY} 이하 (취약)" $RED
            POLICY_OK=0
        fi
    done
    func_print_msg "---------------------------------------"
    if [ $POLICY_OK -eq 1 ]; then
        func_print_msg "종합 판단: 패스워드 복잡성 설정 (양호)" $GREEN
    else
        func_print_msg "종합 판단: 패스워드 복잡성 설정 (취약)" $RED
    fi
}
