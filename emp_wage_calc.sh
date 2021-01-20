#! /bin/bash 
echo "Welcome to Employee wage computation program"

#Check employee is present or absent
function checkAttendance
{
isPresent=1
attendance=$((RANDOM%2))
if [ $attendance -eq $isPresent ]
then
	echo 1
else
	echo 0
fi
}
#Check if employee is parttime or full time
function checkParttime
{
isPartTime=1
random=$((RANDOM%2))
if [ $random -eq $isPartTime ]
then
        echo 1
else
        echo 0
fi
}

#Calculate daily employee wage
function empWage
{
attendance=$1
isPartTime=$2
isPresent=1
wagePerHr=20
fullDayHr=8
partTimeHr=4
case $attendance in 
	0)salary=0;;
	1)if [ $isPartTime -eq 1 ] ; then salary=$((wagePerHr*partTimeHr)) ; else salary=$((wagePerHr*fullDayHr)); fi ;  ;;
esac
echo $salary
}
#Main program
attendance=$(checkAttendance);partTime=$(checkParttime)
case $attendance in
	0)echo Employee absent;;
	1)echo Employee Present;;
esac
case $partTime in
	0)echo "Full time employee";;
	1)echo  "Part time employee"
esac
echo "Employee wage": $(empWage $attendance $partTime)
