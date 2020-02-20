#!/usr/bin/env sh
# mike's sgetit.sh script
if [ -z $1 ]; then
    echo -e "\n\tUsage: $0 <SSL host> <URL>"
    exit
fi
echo -e "GET $2 HTTP/1.0\n\n" | \
openssl s_client -quiet -connect $1:443 2>/dev/null
