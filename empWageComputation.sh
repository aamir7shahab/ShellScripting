echo "Welcome to Employee Wage Computation Program on Master Branch"

# Check Employee is Present or Absent
attendance=$((RANDOM%2))
echo $attendance

if [[ $attendance -eq 0 ]]; then
	echo "Employee is Absent"
else
	echo "Employee is Present"
fi