#!/bin/bash

# Threshold for disk usage percentage (set to 80%)
THRESHOLD=0.1

# Email details
TO_EMAIL="job.khanburhan502@gmail.com"   # Replace with your email address
SUBJECT="Disk Space Alert on $(hostname)"
BODY="Warning: Disk space usage has exceeded ${THRESHOLD}% on the following partitions:"

# Check each mounted partition's usage
df -H | grep -vE '^Filesystem|tmpfs|cdrom' | awk '{ print $5 " " $1 }' | while read output;
do
#    # Get the usage percentage and filesystem
        usage=$(echo $output | awk '{ print $1}' | sed 's/%//g')
            filesystem=$(echo $output | awk '{ print $2 }')
                
     # Check if usage exceeds the threshold
                        if [ $usage -ge $THRESHOLD ]; then
                                BODY="$BODY\n$filesystem - ${usage}% used"
                                        ALERT=1
   fi
 done

 # If any filesystem is above the threshold, send the email
 if [ "$ALERT" = "1" ]; then
 echo -e "$BODY" | mail -s "$SUBJECT" "$TO_EMAIL"
 echo "Alert email sent to $TO_EMAIL"
 else
 echo "Disk usage is below $THRESHOLD% on all filesystems."
                                                        fi
                                                        
