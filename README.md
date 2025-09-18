# WHOIS CO.ZA Domain Expiry Checker
A lightweight Bash script to check the expiration date of .co.za domains by querying the official CO.ZA registry.

## Features
Fast and Efficient: Directly queries coza-whois.registry.net.za

#### Clean Output: 
Returns only the expiration date in YYYY-MM-DD format

#### Simple Usage: 
Easy command-line interface

#### Bulk Processing: 
Supports checking multiple domains via loops

### Installation
```
git clone [<your-repo-url>](https://github.com/mariusdebeer/COZA-Expiry-date.git)
cd whois-coza-checker
chmod +x whois_cozaexpire.sh
```

### Prerequisites
Bash shell
whois command installed on your system
Internet connection

## Usage
#### Check a single domain:
```
./whois_cozaexpire.sh example.co.za
```
#### Output format:

example.co.za | Registry Expiry Date: 2025-12-31

#### Check multiple domains from a file:
````
for domain in $(cat domains.txt); do
    ./whois_cozaexpire.sh $domain
done
````

## How It Works
Takes a domain name as input argument
Connects to the official CO.ZA WHOIS server (coza-whois.registry.net.za)
Extracts the "Registry Expiry Date" field
Removes the timestamp portion using sed to leave only the date
Outputs in format: domain.co.za | Registry Expiry Date: YYYY-MM-DD

#### Example Output

example.co.za | Registry Expiry Date: 2026-04-17

google.co.za | Registry Expiry Date: 2025-03-21

github.co.za | Registry Expiry Date: 2024-12-15

License

MIT License - feel free to modify and distribute.
