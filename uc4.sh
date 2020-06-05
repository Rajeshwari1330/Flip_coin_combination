#!/bin/bash -x
echo "Welcome To The Flip Coin Simulator"

echo "enter the number of times you want to play the game"
read n
declare -A triplet
function flip()
{
result=$((RANDOM % 2 + 1))
}

#flip

hhh=0
ttt=0
hht=0
thh=0
hth=0
htt=0
tht=0
tth=0

echo "WINNER IS"
for((i=0;i<n;i++))
do
flip
result1=$result
flip
result2=$result
flip
result3=$result
if(($result1==1 && $result2==1 && $result3==1))
then
        echo "head & head & head"
        let "hhh=hhh+1"
        triplet[1]=$hhh
elif(($result1==2 && $result2==2 && $result3==2))
then
        echo "tail & tail & tail"
        let "ttt=ttt+1"
        triplet[2]=$ttt
elif(($result1==1 && $result2==1 && $result3==2))
then
        echo "head & head & tail"
        let "hht=hht+1"
        triplet[3]=$hht
elif(($result1==2 && $result2==1 && $result3==1))
then
        echo "tail & head & head"
        let "thh=thh+1"
        triplet[4]=$thh
elif(($result1==2 && $result2==1 && $result3==2))
then
        echo "tail & head & tail"
        let "tht=tht+1"
        triplet[5]=$tht
elif(($result1==2 && $result2==2 && $result3==1))
then
        echo "tail & tail & head"
        let "tth=tth+1"
        triplet[6]=$tth
elif(($result1==1 && $result2==2 && $result3==1))
then
        echo "head & tail & head"
        let "hth=hth+1"
        triplet[7]=$hth
elif(($result1==1 && $result2==2 && $result3==2))
then
        echo "head & tail & tail"
        let "htt=htt+1"
        triplet[8]=$htt
fi
done

echo "triplet percentage combination for head and head and head is"
if(($hhh>0))
then
        hhh_perc=`echo "scale=2; ${triplet[1]}*100/$n" | bc`
        echo "$hhh_perc %"
else
        echo "0 %"
fi

echo "triplet percentage combination for tail and tail and tail is"
if(($ttt>0))
then
        ttt_perc=`echo "scale=2; ${triplet[2]}*100/$n" | bc`
        echo "$ttt_perc %"
else
        echo "0 %"
fi

echo "triplet percentage combination for head and tail and tail is"
if(($hht>0))
then
        hht_perc=`echo "scale=2; ${triplet[3]}*100/$n" | bc`
        echo "$hht_perc %"
else
        echo "0%"
fi

echo "triplet percentage combination for tail and head and head is"
if(($thh>0))
then
        thh_perc=`echo "scale=2; ${triplet[4]}*100/$n" | bc`
        echo "$thh_perc %"
else
        echo "0 %"
fi

echo "triplet percentage combination for tail and head and tail is"
if(($tht>0))
then
        tht_perc=`echo "scale=2; ${triplet[5]}*100/$n" | bc`
        echo "$tht_perc %"
else
        echo "0 %"
fi

echo "triplet percentage combination for tail and tail and head is"
if(($tth>0))
then
        tth_perc=`echo "scale=2; ${triplet[6]}*100/$n" | bc`
        echo "$tth_perc %"
else
        echo "0 %"
fi

echo "triplet percentage combination for head and tail and head is"
if(($hth>0))
then
        hth_perc=`echo "scale=2; ${triplet[7]}*100/$n" | bc`
        echo "$hth_perc %"
else
        echo "0 %"
fi

echo "triplet percentage combination for head and tail and tail is"
if(($htt>0))
then
        htt_perc=`echo "scale=2; ${triplet[8]}*100/$n" | bc`
        echo "$htt_perc %"
else
        echo "0 %"
fi



