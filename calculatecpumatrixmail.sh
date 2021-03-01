kubectl top nodes | awk '{ print $1}' | tail -n+2 > calculatecpumatrix.txt
for i in  $(cat calculatecpumatrix.txt);
do
cpu=`kubectl top nodes | grep $i | awk '{ print $3 }' | sed 's/%//g'`
currentdate=`date`
if [[ $cpu -gt 3 ]]
then
echo "cpu more utilization $i $cpu $currentdate" >> log.txt
else
echo "cpu not utilized $i $cpu $date $currentdate"  >> log.txt
fi
done



