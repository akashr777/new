#shell script to display message "Good Morning,Good Afternoon,Good evening and Good Night" according to system time

if  [ $# -gt 0 ]
then
echo "Syntax error. Code will check the system Time.\nSyntax --> $0"
exit 1
fi
if [ $# -eq 0 ]
then
h=$(date +"%H")
if [ $h -ge 6 -a $h -lt 12 ]
then
echo "Good Morning. Have a nice day!"
elif [ $h -ge 12 -a $h -lt 16 ]
then 
echo "Good Afternoon"
elif [ $h -ge 16 -a $h -lt 20 ]
then
echo "Good Evening"
else
echo "Good Night. Sleep tight!"
fi
fi
