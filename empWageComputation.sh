echo "Welcome to Employee Wage Computation Program on Master Branch"

# <<<<<<< Updated upstream
# <<<<<<< HEAD
#CONSTANT
WAGE_PER_HOUR=20
EMPLOYEE_HOUR_FULLTIME=8
EMPLOYEE_HOUR_PARTTIME=4

# Check Employee is Present or Absent
attendance=$((RANDOM%2))

if [[ $attendance -eq 0 ]]; then
	echo "Employee is Absent"
else
	echo "Employee is Present"
fi

# =======
# calculating daily Employee Wage

dailyWage=$(( WAGE_PER_HOUR * EMPLOYEE_HOUR_FULLTIME ))
echo "Dialy Wage : $dailyWage"
# >>>>>>> uc2

# =======
# Add Part time Employee & Wage

partTimeWage=$((WAGE_PER_HOUR*EMPLOYEE_HOUR_PARTTIME))
echo "Part Time Wage : $partTimeWage"
# >>>>>>> uc3

# =======
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
echo "Total wage using case : $empWage"
# >>>>>>> Stashed changes
