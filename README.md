WHOIS CO.ZA Domain Expiry Checker
A lightweight Bash script to check the expiration date of .co.za domains by querying the official CO.ZA registry.

Features
Fast and Efficient: Directly queries coza-whois.registry.net.za

Clean Output: Returns only the expiration date in YYYY-MM-DD format

Simple Usage: Easy command-line interface

Bulk Processing: Supports checking multiple domains via loops

Installation
bash
git clone <your-repo-url>
cd whois-coza-checker
chmod +x whois_cozaexpire.sh
Prerequisites
Bash shell

whois command installed on your system

Internet connection

Usage
Check a single domain:
bash
./whois_cozaexpire.sh example.co.za
Output format:
text
example.co.za | Registry Expiry Date: 2025-12-31
Check multiple domains from a file:
bash
for domain in $(cat domains.txt); do
    ./whois_cozaexpire.sh $domain
done
Example with domains.txt:
bash
echo "example1.co.za
example2.co.za
example3.co.za" > domains.txt

for domain in $(cat domains.txt); do ./whois_cozaexpire.sh $domain; done
Script Contents
bash
#!/bin/bash
domain=$1
printf "$domain | "
whois -h coza-whois.registry.net.za "$domain" | grep "Registry Expiry Date" | sed 's/T[0-9][0-9]:[0-9][0-9]:[0-9][0-9]Z//'
How It Works
Takes a domain name as input argument

Connects to the official CO.ZA WHOIS server (coza-whois.registry.net.za)

Extracts the "Registry Expiry Date" field

Removes the timestamp portion using sed to leave only the date

Outputs in format: domain.co.za | Registry Expiry Date: YYYY-MM-DD

Example Output
text
example.co.za | Registry Expiry Date: 2026-04-17
google.co.za | Registry Expiry Date: 2025-03-21
github.co.za | Registry Expiry Date: 2024-12-15
Troubleshooting
Error: whois: command not found

bash
# On Ubuntu/Debian:
sudo apt install whois

# On CentOS/RHEL:
sudo yum install whois

# On macOS:
brew install whois
Error: Connection timeout

Check your internet connection

Verify the CO.ZA WHOIS server is accessible

License
MIT License - feel free to modify and distribute.

Contributing
Fork the repository

Create a feature branch

Commit your changes

Push to the branch

Create a Pull Request

Disclaimer
This script is provided as-is. The availability and format of WHOIS data is subject to change by the registry operator. Use at your own risk.
