function U-03() {
    local DIAG_ITEM="U-03: 계정 잠금 임계값 설정"
    
    local CONFIG_FILE=""
    
    # 1. RHEL/Rocky 계열 확인
    if [ -f "/etc/pam.d/system-auth" ]; then
        CONFIG_FILE="/etc/pam.d/system-auth"
    # 2. Debian/Ubuntu 계열 확인
    elif [ -f "/etc/pam.d/common-auth" ]; then
        CONFIG_FILE="/etc/pam.d/common-auth"
    # 3. 기타 (예: password-auth 등 백업)
    elif [ -f "/etc/pam.d/password-auth" ]; then
        CONFIG_FILE="/etc/pam.d/password-auth"
    fi

    func_print_msg "--- 계정 잠금 임계값 설정 진단 ---"

    if [ -z "$CONFIG_FILE" ]; then
        func_print_msg "진단 결과: 점검 불가 (PAM 인증 설정 파일이 존재하지 않음)" $YELLOW
        func_print_msg "--------------------------------------------"
        return
    fi
    
    # [1] pam_faillock.so 설정 확인 (최신 Linux 시스템에서 주로 사용)
    # deny=X 설정이 있고, X가 5 이하인지 확인
    local FAILLOCK_SETTING=$(grep -E '^\s*auth\s+required\s+pam_faillock.so\s+.*deny=[0-5]' "$CONFIG_FILE" 2> /dev/null)

    # [2] pam_tally2.so 설정 확인 (레거시/특정 환경에서 사용)
    local TALLY2_SETTING=$(grep -E '^\s*auth\s+required\s+pam_tally2.so\s+.*deny=[0-5]' "$CONFIG_FILE" 2> /dev/null)

    if [[ -n "$FAILLOCK_SETTING" || -n "$TALLY2_SETTING" ]]; then
        # 양호: deny=5 이하 설정 발견
        func_print_msg "진단 결과: 양호 (계정 잠금 임계값이 5회 이하로 설정됨)" $GREEN
        func_print_msg "설정 파일: $CONFIG_FILE"
        func_print_msg "설정 내용:"
        if [[ -n "$FAILLOCK_SETTING" ]]; then
            func_print_msg "$FAILLOCK_SETTING"
        elif [[ -n "$TALLY2_SETTING" ]]; then
            func_print_msg "$TALLY2_SETTING"
        fi
    else
        # 취약: deny 설정이 없거나 6회 이상으로 설정됨
        func_print_msg "  진단 결과: 취약 (계정 잠금 임계값(deny) 설정이 없거나 6회 이상으로 설정됨)" $RED
        func_print_msg "  설정 파일: $CONFIG_FILE"
        func_print_msg "  ※ $CONFIG_FILE 파일에서 'auth required pam_faillock.so' "
	func_print_msg "    또는 'pam_tally2.so' 모듈에 'deny=5' 이하 설정을 추가해야 합니다."

    fi

  func_print_msg "---------------------------------------"
}
