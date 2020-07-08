echo "Welcome to Employee Wage Computation Program on Master Branch"

<<<<<<< HEAD
# Check Employee is Present or Absent
attendance=$((RANDOM%2))

if [[ $attendance -eq 0 ]]; then
	echo "Employee is Absent"
else
	echo "Employee is Present"
fi
=======
# calculating daily Employee Wage
#CONSTANT
WAGE_PER_HOUR=20
EMPLOYEE_HOUR_FULLTIME=8

dailyWage=$(( WAGE_PER_HOUR * EMPLOYEE_HOUR_FULLTIME ))
echo "Dialy Wage : $dailyWage"
>>>>>>> uc2
