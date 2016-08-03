#!/usr/bin/sh

cd /var/log
logfile=cron
if[ !-f $logfile ]
then
echo "log file not found"
exit 1
fi

time = 'date+%Y%m%d'
latestlogfile = $logfile.$time
cp $logfile $latestlogfile
value = 'gzip $latestlogfile'
mv $value /root
cat /dev/null > /var/log/$logfile 



