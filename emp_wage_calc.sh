#! /bin/bash 
printf "Welcome to Employee wage computation program \n "

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
#Calculate Monthly wage
function monthlyWage
{
dailyWage=$1
echo $((dailyWage*20))
}

#Main program
#attendance=$(checkAttendance)
#partTime=$(checkParttime)
#read -p"Is part time employee" partTime
case $attendance in
	0)printf "Employee absent \n";;
	1)printf "Employee Present \n";;
esac
case $partTime in
	0)printf "Full time employee \n";;
	1)printf "Part time employee \n"
esac 

dailyWage=$(empWage $attendance $partTime)
echo "Employee daily wage" $dailyWage

count_hours=0
max_count_hours=100
day=1
while [ $day -lt 32 -a $count_hours -le $max_count_hours ]
do
	echo day $day
	attendance=$(checkAttendance)
	partTime=$(checkParttime)
	if [ $attendance -eq 0 ]
	then
		echo "Employee Absent"
	else
		echo "Employee Present"
		if [ $partTime -eq 0 ]
        	then
                	echo "full day employee"
                	count_hours=$((count_hours+8))
			daily_wage=$(empWage $attendance $partTime)
			wage=$((wage+daily_wage))
        	else
                echo "part day employee"
                count_hours=$((count_hours+4))
        	fi
		daily_wage=$(empWage $attendance $partTime)
                wage=$((wage+daily_wage))
	fi
	echo  $count_hours $wage
	day=$((day+1))
done
echo "Count of total hours in work" $count_hours
echo "Total wage received " $wage



