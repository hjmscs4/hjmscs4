function U-05() {
    local DIAG_ITEM="U-05: root 홈, 패스 디렉터리 권한 및 패스 설정"
    local IS_VULNERABLE="NO"
    local CONFIG_FILES=("/etc/profile" "/etc/bashrc" "/root/.bashrc" "/root/.profile")
    
    func_print_msg "--- root 홈, 패스 디렉터리 권한 및 패스 설정 ---"
    
    func_print_msg "1. PATH 환경 변수 내 '.' 포함 여부 확인"

    for file in "${CONFIG_FILES[@]}"; do
        if [ -f "$file" ]; then
            # 주석이 아닌 줄 중 PATH를 설정하는 줄에서 '.' (마침표)를 포함하는지 확인
            # PATH=: 또는 :PATH: 또는 :. 또는 . 이 포함된 경우
            local VULN_PATH=$(grep -E '^\s*(export)?\s*PATH=.*(\.:|:\.|::|\.)$' "$file" | grep -v '^#')
            
            if [ -n "$VULN_PATH" ]; then
                func_print_msg "  [취약] 파일: $file 에서 '.'이 포함된 PATH 설정이 발견되었습니다." $RED
                func_print_msg "  설정 내용: $VULN_PATH"
                IS_VULNERABLE="YES"
            fi
        fi
    done

    # 2. root 홈 디렉터리 및 PATH 권한 점검 (가이드에 따른 필수 항목)
    # root 홈 디렉터리 권한이 755(drwxr-xr-x)보다 취약한지 확인
	func_print_msg "2. /root 디렉터리 권한 점검"
    local ROOT_HOME_PERM=$(stat -c "%a" /root 2>/dev/null)
    if [ "$ROOT_HOME_PERM" -gt 755 ]; then
        func_print_msg "  [취약] /root 디렉터리 권한 재설정이 필요합니다." $RED
        IS_VULNERABLE="YES"
	else
		func_print_msg "  [양호] /root 디렉터리 권한이 양호합니다." $GREEN
    fi

    # 3. 종합 판단
    if [ "$IS_VULNERABLE" = "YES" ]; then
        func_print_msg "종합 판단: 취약 (PATH에 '.'이 포함되었거나 /root 디렉터리 권한이 취약함)" $RED
        func_print_msg "조치 방법: PATH에서 '.' 제거 및 /root 디렉터리 권한을 700(추천) 또는 755 이하로 설정하십시오."
    else
        func_print_msg "종합 판단: 양호" $GREEN
    fi

    func_print_msg "---------------------------------------"
}
