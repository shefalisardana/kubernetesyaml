kubectl get nodes | awk '{print $1,$2}' | grep -ivw Ready | tail -n+2 | awk '{print$1}' > nodestatus.txt
count=`cat nodestatus.txt | wc -l`
if [[ $count -ge 1 ]]
then
echo -e "Alert pods is $count down\n\n\n ..  " | mail -a nodestatus.txt  -s "Alert Production" shefalisardana.88@gmail.com
fi


