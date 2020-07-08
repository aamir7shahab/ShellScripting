echo "--------------Welcome to Employee Wage Computation Program on Master Branch----------------"
echo
# <<<<<<< Updated upstream
# <<<<<<< HEAD
#CONSTANT
WAGE_PER_HOUR=20
EMPLOYEE_HOUR_FULLTIME=8
EMPLOYEE_HOUR_PARTTIME=4
WORKING_DAY_PER_MONTH=20


# Check Employee is Present or Absent
attendance=$((RANDOM%2))

if [[ $attendance -eq 0 ]]; then
	echo "Employee is Absent"
else
	echo "Employee is Present"
fi

# =======
echo "-------------------"
# calculating daily Employee Wage

dailyWage=$(( WAGE_PER_HOUR * EMPLOYEE_HOUR_FULLTIME ))
echo "Dialy Wage : $dailyWage"
# >>>>>>> uc2
# =======
echo "-------------------"
# Add Part time Employee & Wage

partTimeWage=$((WAGE_PER_HOUR*EMPLOYEE_HOUR_PARTTIME))
echo "Part Time Wage : $partTimeWage"
# >>>>>>> uc3
# =======
echo "---------------------------"
# calculating Employee wage using switch case
empStatus=$((RANDOM%2+1))

case $empStatus in
	1 ) empHrs=$EMPLOYEE_HOUR_PARTTIME
		;;
	2 ) empHrs=$EMPLOYEE_HOUR_FULLTIME
		;;
	* ) empHrs=0
		;;
esac
empWage=$((empHrs*WAGE_PER_HOUR))
echo "Total wage using CASE : $empWage"
# >>>>>>> Stashed changes
# >>>>>>> uc4
echo "--------------------"
#calculating Wage for Month

TotalMonthWage=0

for (( i = 0; i < $WORKING_DAY_PER_MONTH; i++ )); do
	
	empStatus=$((RANDOM%2+1))
	case $empStatus in
		1 ) empHrs=$EMPLOYEE_HOUR_PARTTIME
			;;
		2 ) empHrs=$EMPLOYEE_HOUR_FULLTIME
			;;
		* ) empHrs=0
			;;
	esac
	empWage=$((empHrs*WAGE_PER_HOUR))
	TotalMonthWage=$(( TotalMonthWage + empWage ))
done
echo "Monthly Wage : $TotalMonthWage"
echo "----------------------------------"
# Calculate Wages till a condition of total working hours or days is reached for a month
totalWorkingHrs=0
noWorkingDays=0
TotalMonthWage=0
while [[ $totalWorkingHrs -le 100 || $noWorkingDays -le 20 ]]; do
	empStatus=$((RANDOM%2+1))
	case $empStatus in
		1 ) empHrs=$EMPLOYEE_HOUR_PARTTIME
			;;
		2 ) empHrs=$EMPLOYEE_HOUR_FULLTIME
			;;
		* ) empHrs=0
			;;
	esac
	empWage=$((empHrs*WAGE_PER_HOUR))
	TotalMonthWage=$(( TotalMonthWage + empWage ))
	totalWorkingHrs=$(( totalWorkingHrs + empHrs ))
	noWorkingDays=$(( noWorkingDays + 1 ))
done
echo "Monthly Wage With condition : $TotalMonthWage"
echo "--------------------------------"

# Refactor the Code to write a function to get work hours
getEmpHrs(){
	# calculating Employee wage using switch case
	empStatus=$((RANDOM%2+1))
	if [[ $empStatus -eq 1 ]]; then
		empHrs=4 #part-time
	else
		empHrs=8
	fi
	echo $empHrs
}

empHrsRef="$(getEmpHrs)"
echo "Got emp. hrs. using function: $empHrsRef"
echo "-------------------------------------------------------------------------------------------"
# Store the Daily Wage along with the Total Wage
totalWorkingHrs=0
noWorkingDays=0
TotalMonthWage=0
while [[ $totalWorkingHrs -le 100 || $noWorkingDays -le 20 ]]; do
	empStatus=$((RANDOM%2+1))
	case $empStatus in
		1 ) empHrs=$EMPLOYEE_HOUR_PARTTIME
			;;
		2 ) empHrs=$EMPLOYEE_HOUR_FULLTIME
			;;
		* ) empHrs=0
			;;
	esac
	empDailyWage=$((empHrs*WAGE_PER_HOUR))
	dailyWageArray[(($noWorkingDays))]=$empDailyWage
	TotalMonthWage=$(( TotalMonthWage + empWage ))
	totalWorkingHrs=$(( totalWorkingHrs + empHrs ))
	noWorkingDays=$(( noWorkingDays + 1 ))
done
echo "Daily Wages are: ${dailyWageArray[@]}"
echo "Monthly Wage: $TotalMonthWage"
