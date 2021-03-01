countlines=`wc -l log.txt | awk '{ print $1 }'`
i=1
while [ $i -le $countlines ]
do 
charcount=`cat log.txt | head -$i | wc -c`
echo "$i is $charcount" >> length.txt
((i=i+1))
done


