function U-01() {
    local DIAG_ITEM="U-01: root 계정 원격 접속 제한"
    local SSHD_CONFIG="/etc/ssh/sshd_config"
    local IS_ACTIVE="inactive"

    func_print_msg "--- root 계정 원격 접속 제한 ---"

    # 1. sshd/ssh 서비스 상태 확인: 둘 중 하나라도 Active 상태인지 확인
    if systemctl is-active --quiet sshd 2>/dev/null; then
        IS_ACTIVE="active"
    elif systemctl is-active --quiet ssh 2>/dev/null; then
        IS_ACTIVE="active"
    fi

    if [[ "$IS_ACTIVE" != "active" ]]; then
        func_print_msg "sshd/ssh 서비스가 시작되지 않았습니다. (현재 상태: $IS_ACTIVE)" $YELLOW
	  func_print_msg "---------------------------------------"
        return
    fi
    
    # 서비스 상태 출력 (실행 중인 경우)
    func_print_msg "sshd 서비스가 실행 중입니다." $GREEN

    # 2. PermitRootLogin 설정 확인
    
    # 주석 (#)을 제거하고, 공백을 포함하여 'PermitRootLogin'으로 시작하는 설정의 값을 추출 (첫 번째 값만 사용)
    local LOGIN_STATUS=$(grep -i '^\s*PermitRootLogin' "$SSHD_CONFIG" | grep -v '^\s*#' | awk '{print tolower($2)}' | head -n 1)

    func_print_msg "  PermitRootLogin 설정 확인:"

    if [ ! -f "$SSHD_CONFIG" ]; then
        func_print_msg "진단 불가: $SSHD_CONFIG 파일이 존재하지 않습니다." $YELLOW
    elif [[ "$LOGIN_STATUS" == "yes" ]]; then
        func_print_msg "root 계정 원격 접속이 허용되어 있습니다. (취약)" $RED
    elif [[ "$LOGIN_STATUS" == "no" ]]; then
        func_print_msg "root 계정 원격 접속이 차단되어 있습니다. (양호)" $GREEN
    elif [[ -z "$LOGIN_STATUS" ]]; then
        func_print_msg "PermitRootLogin 설정이 파일에 명시되지 않았습니다. (기본값은 'no'일 가능성이 높음)" $YELLOW
    else
        func_print_msg "설정값이 잘못되었습니다. (값: $LOGIN_STATUS)" $RED
    fi

  func_print_msg "---------------------------------------"

    
}
