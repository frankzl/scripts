#!/bin/bash
## Quickly checks if I have new gmail
 
echo -e "Checking for new messages... \c"

atomlines=`wget -T 3 -t 1 -q --secure-protocol=TLSv1 \
 --no-check-certificate \
 --user=USERNAME --password=PASSWORD \
 https://mail.google.com/mail/feed/atom -O - \
 | wc -l`
 
#atomlines=`curl -su cope.derrick:pilates681215 https://mail.google.com/mail/feed/atom'
echo -e "\r\c"
 
[ $atomlines -gt "8" ] \
 && echo -e " You have new gmail.  \c" \
 || echo -e " No new gmail.  \c"
