#!/bin/bash
while [[ true ]]
do
echo "enter your name:"
read name
if [[ $name != "" ]]
then
echo "enter your age:"
read age
fi
if [[ ($name == "") || ($age -eq 0) ]]
then
break
elif [[ $age -le 16 ]]
then 
group="child"
elif [[ $age -le 25 ]]
then
group="youth"
else
group="adult"
fi
echo "$name, your group is $group"
done
echo "bye"
