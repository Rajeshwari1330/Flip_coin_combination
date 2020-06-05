#!/bin/bash -x
echo "Welcome To The Flip Coin Simulator"

echo "enter the number of times you want to play the game"
read n
declare -A singlet
declare -A doublet
declare -A triplet
function flip()
{
result=$((RANDOM % 2 + 1))
}
#flip

function single()
{
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
if(($h>0))
then
	head_perc=`echo "scale=2; ${singlet[1]}*100/$n" | bc`
	echo "head percentage is $head_perc %"
else
	echo "head percent is 0 %"
fi

if(($t>0))
then
	tail_perc=`echo "scale=2; ${singlet[2]}*100/$n" | bc`
	echo "tail percentage is $tail_perc %"
else
	echo "tail percent is 0 %"
fi
}


function double()
{
hh=0
tt=0
ht=0
th=0

echo "WINNER IS"
for((i=0;i<n;i++))
do
flip
result1=$result
flip
result2=$result
if(($result1==1 && $result2==1))
then
        echo "head & head"
        let "hh=hh+1"
        doublet[1]=$hh
elif(($result1==2 && $result2==2))
then
        echo "tail & tail"
        let "tt=tt+1"
        doublet[2]=$tt
elif(($result1==1 && $result2==2))
then
        echo "head & tail"
        let "ht=ht+1"
        doublet[3]=$ht
elif(($result1==2 && $result2==1))
then
        echo "tail & head"
        let "th=th+1"
        doublet[4]=$th
fi
done

echo "doublet percentage combination for head and head is"
if(($hh>0))
then
        hh_perc=`echo "scale=2; ${doublet[1]}*100/$n" | bc`
        echo "$hh_perc %"
else
        echo "0 %"
fi

echo "doublet percentage combination for tail and tail is"
if(($tt>0))
then
        tt_perc=`echo "scale=2; ${doublet[2]}*100/$n" | bc`
        echo "$tt_perc %"
else
        echo "0 %"
fi

echo "doublet percentage combination for head and tail is"
if(($ht>0))
then
        ht_perc=`echo "scale=2; ${doublet[3]}*100/$n" | bc`
        echo "$ht_perc %"
else
        echo "0%"
fi

echo "doublet percentage combination for tail and head is"
if(($th>0))
then
        th_perc=`echo "scale=2; ${doublet[4]}*100/$n" | bc`
        echo "$th_perc %"
else
        echo "0 %"
fi
}


function triple()
{
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
}

echo "which process you want to run?"
echo "instructions:"
echo "press 1 for single coin toss at a time"
echo "press 2 for double coin toss at a time"
echo "press 3 for triple coin toss at a time"
echo "please press the key"
read key
if(($key==1))
then
	single
	echo "head occurs $h times"
	echo "tail occurs $t times"

elif(($key==2))
then
	double
	echo "head and head occurs $hh times"
	echo "tail and tail occurs $tt times"
	echo "head and tail occurs $ht times"
	echo "tail and head occurs $th times"
elif(($key==3))
then
	triple
	echo "head and head and head occurs $hhh times"
        echo "tail and tail and tail occurs $ttt times"
        echo "head and head and tail occurs $hht times"
        echo "tail and head and head occurs $thh times"
	echo "tail and head and tail occurs $tht times"
        echo "tail and tail and head occurs $tth times"
        echo "head and tail and head occurs $hth times"
        echo "head and tail and tail occurs $htt times"
else
	echo "press valid input"
fi
