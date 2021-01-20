#! /bin/bash
echo "Welcome to Employee wage computation program"

#Check employee is present or absent
isPresent=1
attendance=$((RANDOM%2))
if [ $attendance -eq $isPresent ]
then
	echo "Employee Present"
else
	echo "Employee Absent"
fi

#Calculate daily employee wage
wagePerHr=20
fullDayHr=8
if [ $attendance -eq $isPresent ]
then
	salary=$((wagePerHr*fullDayHr))
else
	salary=0
fi
echo "Salary for employee :" $salary 
