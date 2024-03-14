# to print prime numbers  in a range
if [ $# -ne 2 ]
then
   echo "syntax is <$0> <no1> <no2> "
   exit 1
fi
n1=$1
n2=$2
if [ $n1 -gt $n2 ]
then
   t=$n1
   n1=$n2
   n2=$t
fi
while [ $n1 -le $n2 ]
do
  i=2
  while [ $i -le `expr $n1 / 2` ]
  do
   if [ `expr $n1 % $i` -eq 0 ]
   then
       break
   fi
   i=`expr $i + 1`
  done
  if [ $i -gt `expr $n1 / 2` ]
  then
    echo -n "$n1,"
  fi
  n1=`expr $n1 + 1`
  done
  echo "\n"
  exit 0
