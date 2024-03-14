# sides of triangle
if [ $# -gt 0 ]
then
echo "#syntax error"
exit 1
fi
if [ $# -eq 0 ]
then
echo "enter first number"
read a
echo "enter second number"
read b
echo "enter third number"
read c
fi
echo "output"
if [ `expr $a + $b` -le $c -o `expr $a + $c` -le $b -o `expr $b + $c` -le $a ]
then
    echo "$a $b $c cannot be the sides of a triangle " 
    exit
else
    echo "$a $b $c can be the sides of a triangle"
fi
 
