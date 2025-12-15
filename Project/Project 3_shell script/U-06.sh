function U-06() {
    local DIAG_ITEM="U-06: 파일 및 디렉터리 소유자 설정"
    local IS_VULNERABLE="NO"
    
    # 시스템 주요 경로에서 소유자/그룹이 없는 파일 및 디렉터리 검색
    # -nouser: 소유자가 없는 파일 검색
    # -nogroup: 그룹이 없는 파일 검색
    # -o: OR 조건
    # 2>/dev/null: 권한 오류 메시지 억제
    local SEARCH_PATH=("/etc" "/tmp" "/bin" "/sbin" "/usr/bin" "/usr/sbin")
    
    func_print_msg "--- 파일 및 디렉터리 소유자 설정 ---"
    
    local NO_OWNER_FILES=""
    
    # 1. 파일 시스템에서 소유자/그룹이 없는 파일 검색 및 목록 저장
    for path in "${SEARCH_PATH[@]}"; do
        if [ -d "$path" ]; then
            # find 명령은 출력이 길어질 수 있으므로, 파일에만 기록하도록 처리합니다.
            local found_files=$(find "$path" -nouser -o -nogroup 2>/dev/null)
            
            if [ -n "$found_files" ]; then
                # 전체 목록을 파일에 추가
                func_print_msg "  [취약] 경로 $path 에서 소유자/그룹이 없는 파일이 발견되었습니다." $RED
                func_print_msg "  발견된 파일 목록:"
                
                # 파일 목록 자체는 화면에 출력하지 않고, RF 파일에만 기록
                echo "$found_files" >> "$RF"
                
                # 취약 상태 플래그 설정
                IS_VULNERABLE="YES"
            fi
        fi
    done

    func_print_msg ""

    # 2. 종합 판단
    if [ "$IS_VULNERABLE" = "YES" ]; then
        func_print_msg "종합 판단: 취약 (소유자/그룹이 존재하지 않는 파일 또는 디렉터리가 발견됨)" $RED
        func_print_msg "조치 방법: 발견된 파일을 삭제하거나 chown 명령으로 소유자를 변경하십시오."
    else
        func_print_msg "종합 판단: 양호 (소유자/그룹이 존재하지 않는 파일 없음)" $GREEN
    fi

  func_print_msg "---------------------------------------"
}
