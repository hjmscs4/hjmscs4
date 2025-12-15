function U-04() {
    local DIAG_ITEM="U-04: 패스워드 파일 보호"
    local PASSWD_FILE="/etc/passwd"
    local SHADOW_FILE="/etc/shadow"
    local IS_VULNERABLE="NO"

    func_print_msg "--- 패스워드 파일 보호 여부 확인 ---"

    # 1. /etc/shadow 파일 존재 확인
    if [ ! -f "$SHADOW_FILE" ]; then
        func_print_msg "진단: ${SHADOW_FILE} 파일이 존재하지 않습니다." $RED
        IS_VULNERABLE="YES"
    fi

    # 2. /etc/passwd 파일 내 두 번째 필드(패스워드)가 'x'로 마킹되어 있는지 확인
    # /etc/passwd의 패스워드 필드가 'x'가 아닌 다른 값(암호화된 패스워드)을 포함하는 라인이 있는지 검사
    local VULN_USERS=$(awk -F: '($2 != "x" && $2 != "*") {print $1}' "$PASSWD_FILE" 2> /dev/null)

    if [ -n "$VULN_USERS" ]; then
        func_print_msg "진단: ${PASSWD_FILE} 파일에 패스워드가 저장된 사용자(x 마킹 안됨)가 발견되었습니다." $RED
        func_print_msg "취약 사용자 목록: $VULN_USERS"
        IS_VULNERABLE="YES"
    fi

    # 3. 종합 판단 및 조치 안내
    if [ "$IS_VULNERABLE" = "YES" ]; then
        func_print_msg "종합 판단: 취약 (패스워드가 ${PASSWD_FILE}에 저장되어 있거나 shadow 파일이 없음)" $RED
        func_print_msg "조치 방법: 'pwconv' 명령을 사용하여 섀도우 패스워드 정책을 적용해야 합니다."
    else
        func_print_msg "종합 판단: 양호 (패스워드가 ${SHADOW_FILE}에 저장되어 있음)" $GREEN
    fi

    func_print_msg "---------------------------------------"
}
