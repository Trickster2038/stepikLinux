#!/bin/bash
calc ()
{
if [[ !($# -eq 3) ]]
then
echo "error"
exit
fi

a=$1
b=$3
echo "$a $2 $b"
case $2 in
"+")
let c=a+b
;;
"-")
let c=a-b
;;
"/")
let c=a/b
;;
"%")
let c=a%b
;;
"*")
let c=a*b
;;
"**")
let c=a**b
;;
*)
echo "error"
exit
;;
esac
echo "$c"
}

while [[ true ]]
do
read m n p
echo "$m $n $p"
if [[ $m == "exit" ]]
then
echo "bye"
break
else
calc $m "$n" $p
fi
done

exit

