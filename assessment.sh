#! /bin/bash


string=sudo cat /etc/passwd | cut -d: -f1,6
echo "${string}" | md5sum >> /var/log/current_users
old=$(cat /var/log/current_users)
new=$(cat /etc/passwd | cut -d: -f1,6 | md5sum)

    if [[ $new != $old ]]
    then
       echo "$(date +'%D-%T') changes occured" >> /var/log/user_changes
    else
        echo "There are no changes"
    fi

sudo crontab -e
0 * * * * /usr/bin/assessment.sh


https://www.geeksforgeeks.org/cut-command-linux-examples/
https://askubuntu.com/questions/419548/how-to-set-up-a-root-cron-job-properly


