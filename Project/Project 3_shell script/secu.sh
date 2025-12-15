function U-ALL() {
	func_print_msg "U-ALL 함수 호출"
echo $menuCount
echo ${menulist[*]}
for ((i=0;i<$menuCount;i++)); do
	funcName=$(echo "${menulist[i]}" | awk -F':' '{printf $1}')
	echo $funcName
	if [[ "$funcName" =~ "U-" ]]; then
		source source ${funcName}.sh 2> /dev/null
		if [ $? -eq 0 ]; then
			func_print_msg "--- $funcName ---"
			$funcName		#함수 호출
		fir
	fi
done
}
[root@master secu]# cat secu.sh
#!/bin/bash
RED="\e[31m"; GREEN="\e[32m"; YELLOW="\e[33m"; BLUE="\e[34m"; RESET="\e[00m"

RF=`hostname`"_"`date +F__%T`.txt	#결과 파일 이름

# 메시지 출력 함수

function func_print_msg() {
	local message="$1"
	local color="$2"

    # ANSI 이스케이프 시퀀스 패턴 (\x1b는 16진수 1B, 즉 ESC 문자)
    local ANSI_COLOR_CODE="\x1b\[[0-9;]*m" 

    # 1. Yes/No 질문 시: 화면에만 출력 (줄 바꿈 없음)
	if [[ $1 =~ "Yes" ]]; then
		echo -n -e "$color $message ${RESET}"
		return
	fi
    
    # 2. 화면 출력
    if [[ $# == 2 ]]; then
        echo -e "$color $message ${RESET}"
    else
        echo "$message"
    fi
    
    # 3. 파일에 기록할 메시지 준비
    local FILE_MESSAGE
    if [[ $# == 2 ]]; then
        # echo -e 로 색상 코드를 해석한 후, sed로 색상 코드만 제거
	FILE_MESSAGE=$(echo -e "$color $message ${RESET}" | tr -d '\033' | sed 's/\[[0-9;]*m//g')
    else
        FILE_MESSAGE="$message"
    fi

    # 4. 파일 출력 (파일에만 기록)
    echo "$FILE_MESSAGE" >> "$RF"
    
    # 모든 결과 출력 후 빈 줄 추가
#    echo "" >> "$RF"
}

# 화면 출력 전용
function func_display_msg() {
	local message="$1"
	local color="$2"

    # 1. Yes/No 질문 시: 화면에만 출력 (줄 바꿈 없음)
	if [[ $1 =~ "Yes" ]]; then
		echo -n -e "$color $message ${RESET}"
		return
	fi
    
    # 2. 화면 출력
    if [[ $# == 2 ]]; then
        echo -e "$color $message ${RESET}"
    else
        echo "$message"
    fi
}


# 시스템 정보

function func_get_sys_vars() {
	# 오류 억제 (2> /dev/null) 적용 및 파일명 수정 (/etc/os-release)
	OS_INFO=$(grep -E '^(NAME|VERSION_ID)' /etc/os-release 2> /dev/null | awk -F'=' '{print $2}' | tr -d '"' | xargs | sed 's/ / /')
	# 오류 억제 적용
	IP_ADDR=$(ip a 2> /dev/null | grep 'inet ' | grep -v '127.0.0.1' | awk '{print $2}' | cut -d/ -f1 | head -n 1)
	if [ -z "$IP_ADDR" ]; then
	# ip a 실패 시 ifconfig 시도 (ifconfig가 없을 수 있으니 2> /dev/null
	IP_ADDR=$(ifconfig 2> /dev/null | grep 'inet ' | grep -v '127.0.0.1' | awk '{print $2}' | cut -d/ -f1 | head -n 1)
	fi
}


function func_record_syinfo() {
    func_get_sys_vars
    
	# 파일에 시스템 정보 기록
	echo "========================= 리눅스 취약점 진단 스크립트 =========================" >> "$RF"
	echo " 시스템 기본 정보" >> "$RF"
	echo " - 운영체제	: ${OS_INFO}" >> "$RF"
	echo " - 호스트이름	: $(uname -n) (${IP_ADDR})" >> "$RF"
	echo " - 커널 버전	: `uname -r` " >> "$RF"
	echo "===============================================================================" >> "$RF"
}

function func_display_system_info() {
    func_get_sys_vars

	# 화면에 시스템 정보 출력
	func_display_msg "========================= 리눅스 취약점 진단 스크립트 ========================="
	func_display_msg " 시스템 기본 정보"
	func_display_msg " - 운영체제	: ${OS_INFO}"
	func_display_msg " - 호스트이름	: $(uname -n) (${IP_ADDR})"
	func_display_msg " - 커널 버전	: `uname -r` "
	func_display_msg "==============================================================================="
}

# 메인

if [ "$EUID" -ne 0 ]; then
	func_print_msg "root 권한으로 스크립트를 실행하십시오." $RED
	exit 2
fi

clear
func_print_msg " 리눅스 서버 취약점 분석 및 평가를 진행합니다. (Yes/No)" $BLUE
read answer
if [[ $answer =~ ^([nN]|[nN][oO])$ ]]; then
	exit 1
fi

clear
echo "---------- 리눅스 취약점 진단 결과 (${RF}) ----------" > "$RF"
echo "" >> "$RF"

func_record_syinfo	# 파일에 시스템 정보 기록
func_display_system_info # 초기 메뉴 출력 직전에 화면 출력 전용 시스템 정보 호출

IFS=$'\n'
mapfile -t menuList < menulist
menuCount=${#menuList[@]}

func_display_msg "> 메 뉴 ==========" $BLUE
while true
do
    menu=""
	PS3="Select a menu (1-${menuCount}) : "
	select menu in "${menuList[@]}"; do

		case $menu in "${menuList[$(($menuCount - 2))]}")	#U-ALL
				for((i=0;i<=$(($menuCount-3));i++)); do
					funcName=$(echo "${menuList[i]}" | awk -F':' '{printf $1}')
					source ${funcName}.sh 2> /dev/null
					if [ $? -eq 0 ]; then
						func_print_msg ">>- $funcName ----------------------------------------------------<<"

						$funcName
						echo ""
					fi
				done
				read -p "Press enter to go back to menu"
				clear
		func_display_system_info
				func_display_msg "> 메 뉴 ==========" $BLUE
				break;;
            

			"${menuList[$(($menuCount - 1))]}")
				clear
				break 2;;
                
			*)	#일반 메뉴
				funcName=$(echo "${menu}" | awk -F':' '{printf $1}')
				if [[ "$funcName" =~ "U-" ]]; then
					source ${funcName}.sh 2> /dev/null
					if [ $? -eq 0 ]; then
						func_print_msg ">>- $funcName ----------------------------------------------------<<"

						$funcName
						echo ""
					else
						func_print_msg "${funcName}.sh 파일이 존재하지 않습니다. ($funcName.sh)"
					fi
				fi
				read -p "Press enter to go back to menu"
				clear
		func_display_system_info
				func_display_msg "> 메 뉴 ==========" $BLUE
				break;;
			esac
		done
	done
cat "$RF"
