###	tzch.sh - v0.1
### A script for changing the timezone.
### 
###	Last update: 17/12/2019

#!/bin/bash
ARGS=${@}
TIMEZONE=$(timedatectl list-timezones | grep -m 1 ${ARGS// /_})

if [[ "$TIMEZONE" ]]; then
        $(sudo timedatectl set-timezone $TIMEZONE)
        echo "Time zone has changed to: $TIMEZONE"
else
        echo "Time zone not found"
fi
