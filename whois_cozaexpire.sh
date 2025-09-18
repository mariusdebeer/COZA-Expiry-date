!/bin/bash
domain=$1
printf "$domain | "
whois -h coza-whois.registry.net.za "$domain" | grep "Registry Expiry Date" | sed 's/T[0-9][0-9]:[0-9][0-9]:[0-9][0-9]Z//'
