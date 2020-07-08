echo "Welcome to Employee Wage Computation Program on Master Branch"

# calculating daily Employee Wage
#CONSTANT
WAGE_PER_HOUR=20
EMPLOYEE_HOUR_FULLTIME=8

dailyWage=$(( WAGE_PER_HOUR * EMPLOYEE_HOUR_FULLTIME ))
echo "Dialy Wage : $dailyWage"