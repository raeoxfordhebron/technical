string=sudo cat /etc/passwd | cut -d " " -f1| sort | uniq -c | sort -rn | head
echo "${string}" | md5sum >> /var/log/current_users
old=$(cat /var/log/current_users)
new=$(cat /etc/passwd|md5sum)
    if [$new!=$old]; then
        echo "$(date + '%D %T') changes occured" >> /var/log/user_changes
        $new|md5sum > /var/log/current_users
    fi

# crontab -e

# 60 * * * * root /home/raeoxfordhebron/technical-assessment/assessment.sh






