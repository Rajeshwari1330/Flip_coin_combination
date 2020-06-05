#!/bin/bash -x
echo "Welcome To The Flip Coin Combination Simulation"

echo "enter the number of times you want to play the game"
read n
declare -A singlet
function flip()
{
result=$((RANDOM % 2 + 1))
}
#flip

h=0
t=0

echo "WINNER IS"
for((i=0;i<n;i++))
do
flip
if(($result==1))
then
        echo "head"
        let "h=h+1"
        singlet[1]=$h
else
        echo "tail"
        let "t=t+1"
        singlet[2]=$t
fi
done

echo "singlet percentage combination is"
head_perc=`echo "scale=2; ${singlet[1]}*100/$n" | bc`
echo "head percentage is $head_perc %"
tail_perc=`echo "scale=2; ${singlet[2]}*100/$n" | bc`
echo "tail percentage is $tail_perc %"


