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
