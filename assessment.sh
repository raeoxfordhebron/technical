string=sudo cat /etc/passwd | cut -d: -f1,6
echo "${string}" | md5sum >> /var/log/current_users
old=$(cat /var/log/current_users)
new=$(cat /etc/passwd| cut -d: -f1,6 |md5sum)
    if [$new!=$old]; then
        echo "$(date + '%D %T') changes occured" >> /var/log/user_changes
    else 
        echo "There are no changes"
    fi

# sudo crontab -e
# 0 * * * * /tmp/assessment.sh






