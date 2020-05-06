# put your shell (bash) code here
gcd () 
{
# echo "gcd args $1 $2"
a=$1
b=$2
if [[ $a -eq $b ]]
then
echo "GCD is $a"
return 0
elif [[ $a -gt $b ]]
then
let "a=a-b"
gcd $a $b
else
let "b=b-a"
gcd $a $b
fi
}

while [[ true ]]
do
read m n
# echo "echo $m $n"
if [[ (-z $m) || (-z $n) ]]
then
break
else
gcd $m $n
fi
done

echo "bye"
