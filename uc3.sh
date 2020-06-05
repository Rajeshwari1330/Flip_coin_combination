!/bin/bash -x
echo "Welcome To The Flip Coin Combination Simulator"

echo "enter the number of times you want to play the game"
read n
declare -A doublet
function flip()
{
result=$((RANDOM % 2 + 1))
}

#flip

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
