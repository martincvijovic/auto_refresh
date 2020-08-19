#!/bin/bash
valid=true
count=1
SUB='02-Jul-2020'
rezultati=''
while [ $valid ]
do
rezultati=$(curl -s "http://rti.etf.bg.ac.rs/rti/oe3aor/rezultati/20192020/" | grep '02-Jul-2020')
echo $rezultati
if [[ "$rezultati" == *"$SUB"* ]];
then
echo STIGLI
break
else
echo Nema nista jos uvek...
fi
sleep 5
done