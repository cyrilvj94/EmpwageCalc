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

#Add part time employee and wage
isPartTime=1
random=$((RANDOM%2))
if [ $random -eq $isPartTime ]
then
	echo "Part time employee"
else
	echo "Not part time employee"
fi
partDayHr=8
if [ $isPartTime -eq $random ]
then
	part_salary=$((wagePerHr*partDayHr))
else
	part_salary=0
fi
echo "Part time salary : "$part_salary
