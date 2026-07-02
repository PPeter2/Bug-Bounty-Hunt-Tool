#!/bin/bash
dir=$1

if [ "$dir" == "-h" ] || [ "$dir" == "--help" ] || [ -z "$dir" ]; then
    echo "Bug Bounty Hunt Folder Creator"
    echo "Use: ./bughunt-create.sh <Directory_name>"
    exit 0
fi

echo "Script started successfully"

BASE_DIR="/home/kali/Documents/bugbountyhunt"

cd "$BASE_DIR" || { echo "[ - ] Base directory not found!"; exit 1; }
echo "Path Checked"
echo "Starting the process"

if [ -d "$dir" ]; then
    echo "[ - ] Directory '$dir' already exists!"
    exit 1
else
    mkdir "$dir"
    echo "[ + ] Successfully created directory"
fi

TARGET_PATH="$BASE_DIR/$dir"

mkdir -p "$TARGET_PATH/subdomains"
touch "$TARGET_PATH/subdomains/subdomains.txt"
touch "$TARGET_PATH/subdomains/live.txt"
touch "$TARGET_PATH/subdomains/live_clean.txt"
touch "$TARGET_PATH/subdomains/resolvers.txt"

mkdir -p "$TARGET_PATH/js"
touch "$TARGET_PATH/js/js_links.txt"
touch "$TARGET_PATH/js/endpoints.txt"

touch "$TARGET_PATH/notes.md"

echo "# BUG BOUNTY HUNT NOTES: $dir" > "$TARGET_PATH/notes.md"
echo "---" >> "$TARGET_PATH/notes.md"
echo "## Executive Summary" >> "$TARGET_PATH/notes.md"
echo "- **Target:** " >> "$TARGET_PATH/notes.md"
echo "- **Severity Focus:** [ ] Critical  [ ] High  [ ] Medium  [ ] Low" >> "$TARGET_PATH/notes.md"
echo "- **Total Bugs Found:** 0" >> "$TARGET_PATH/notes.md"
echo "" >> "$TARGET_PATH/notes.md"
echo "## Methodology Checklist" >> "$TARGET_PATH/notes.md"
echo "- [ ] Subdomain Enumeration (Passive & Active)" >> "$TARGET_PATH/notes.md"
echo "- [ ] Subdomain Takeover Verification" >> "$TARGET_PATH/notes.md"
echo "- [ ] Port Scanning & Services Fingerprinting" >> "$TARGET_PATH/notes.md"
echo "- [ ] Directory & File Fuzzing (Hidden Files/Backups)" >> "$TARGET_PATH/notes.md"
echo "- [ ] Parameter Discovery & URL Extraction" >> "$TARGET_PATH/notes.md"
echo "- [ ] JavaScript Analysis & API Endpoint Mapping" >> "$TARGET_PATH/notes.md"
echo "- [ ] Cloud Storage & S3 Bucket Misconfigurations" >> "$TARGET_PATH/notes.md"
echo "- [ ] Vulnerability Scanning (Nuclei/Custom Templates)" >> "$TARGET_PATH/notes.md"
echo "- [ ] Manual Business Logic & Authentication Testing" >> "$TARGET_PATH/notes.md"
echo "" >> "$TARGET_PATH/notes.md"
echo "## Infrastructure & Environment Details" >> "$TARGET_PATH/notes.md"
echo "- **Main Technologies:** (e.g. React, PHP, Nginx, AWS)" >> "$TARGET_PATH/notes.md"
echo "- **Authentication Mechanisms:** (e.g. JWT, OAuth, Session Cookie)" >> "$TARGET_PATH/notes.md"
echo "- **WAF Detected:** (e.g. Cloudflare, Akamai, None)" >> "$TARGET_PATH/notes.md"
echo "" >> "$TARGET_PATH/notes.md"
echo "## Vulnerability Log" >> "$TARGET_PATH/notes.md"
echo "### 1. [Title of Vulnerability]" >> "$TARGET_PATH/notes.md"
echo "- **Vulnerability Type:** (e.g. IDOR, XSS, SQLi, SSRF, Privilege Escalation)" >> "$TARGET_PATH/notes.md"
echo "- **Severity:** (Critical / High / Medium / Low)" >> "$TARGET_PATH/notes.md"
echo "- **URL / Endpoint:** " >> "$TARGET_PATH/notes.md"
echo "- **Vulnerable Parameter:** " >> "$TARGET_PATH/notes.md"
echo "- **Payload Used:** \` \` " >> "$TARGET_PATH/notes.md"
echo "" >> "$TARGET_PATH/notes.md"
echo "#### Description & Impact" >> "$TARGET_PATH/notes.md"
echo "- Description of the flaw: " >> "$TARGET_PATH/notes.md"
echo "- Business / Technical Impact: " >> "$TARGET_PATH/notes.md"
echo "" >> "$TARGET_PATH/notes.md"
echo "#### Steps to Reproduce (PoC)" >> "$TARGET_PATH/notes.md"
echo "1. Navigate to..." >> "$TARGET_PATH/notes.md"
echo "2. Log in as user A..." >> "$TARGET_PATH/notes.md"
echo "3. Intercept the request in Burp Suite and change the parameter to..." >> "$TARGET_PATH/notes.md"
echo "4. Observe that..." >> "$TARGET_PATH/notes.md"
echo "" >> "$TARGET_PATH/notes.md"
echo "#### HTTP Request & Response" >> "$TARGET_PATH/notes.md"
echo "\`\`\`http" >> "$TARGET_PATH/notes.md"
echo "# Paste Burp Suite Request Here" >> "$TARGET_PATH/notes.md"
echo "\`\`\`" >> "$TARGET_PATH/notes.md"
echo "" >> "$TARGET_PATH/notes.md"
echo "\`\`\`http" >> "$TARGET_PATH/notes.md"
echo "# Paste Burp Suite Response Here" >> "$TARGET_PATH/notes.md"
echo "\`\`\`" >> "$TARGET_PATH/notes.md"
echo "" >> "$TARGET_PATH/notes.md"
echo "#### Remediation" >> "$TARGET_PATH/notes.md"
echo "- Recommended fix: " >> "$TARGET_PATH/notes.md"
echo "This is a template which you can change if you want" >> "$TARGET_PATH/notes.md"

touch "$TARGET_PATH/target.info"
touch "$TARGET_PATH/blacklist.txt"

echo "==========================================" > "$TARGET_PATH/target.info"
echo "            BUG BOUNTY TARGET INFO        " >> "$TARGET_PATH/target.info"
echo "==========================================" >> "$TARGET_PATH/target.info"
echo "Target Name : $dir" >> "$TARGET_PATH/target.info"
echo "Main Domain : " >> "$TARGET_PATH/target.info"
echo "Platform    : [HackerOne / Bugcrowd / VDP / Private]" >> "$TARGET_PATH/target.info"
echo "Started On  : $(date)" >> "$TARGET_PATH/target.info"
echo "==========================================" >> "$TARGET_PATH/target.info"
echo "SCOPE / NOTES:" >> "$TARGET_PATH/target.info"
echo "- In-Scope  :" >> "$TARGET_PATH/target.info"
echo "- Out-Scope :" >> "$TARGET_PATH/target.info"
echo "==========================================" >> "$TARGET_PATH/target.info"
echo "[ + ] Successfully added target.info"

mkdir -p "$TARGET_PATH/assets"
mkdir -p "$TARGET_PATH/reports"

mkdir -p "$TARGET_PATH/nmap"
touch "$TARGET_PATH/nmap/nmap_raw.txt"
touch "$TARGET_PATH/nmap/open_ports.txt"

mkdir -p "$TARGET_PATH/fuzzing"
touch "$TARGET_PATH/fuzzing/directories.txt"
touch "$TARGET_PATH/fuzzing/subdomains_fuzz.txt"
touch "$TARGET_PATH/fuzzing/api_endpoints.txt"
touch "$TARGET_PATH/fuzzing/vhosts.txt"

mkdir -p "$TARGET_PATH/vulns"
touch "$TARGET_PATH/vulns/vulnerabilities.txt"
touch "$TARGET_PATH/vulns/poc_notes.txt"

mkdir -p "$TARGET_PATH/screenshots"
mkdir -p "$TARGET_PATH/exploits"

mkdir -p "$TARGET_PATH/loot"
touch "$TARGET_PATH/loot/credentials.txt"
touch "$TARGET_PATH/loot/api_keys.txt"
touch "$TARGET_PATH/loot/tokens.txt"

mkdir -p "$TARGET_PATH/nuclei"
touch "$TARGET_PATH/nuclei/nuclei_output.txt"
touch "$TARGET_PATH/nuclei/critical_vulns.txt"

mkdir -p "$TARGET_PATH/parameters"
touch "$TARGET_PATH/parameters/urls.txt"
touch "$TARGET_PATH/parameters/params.txt"
touch "$TARGET_PATH/parameters/jsons.txt"

mkdir -p "$TARGET_PATH/osint"
touch "$TARGET_PATH/osint/emails.txt"
touch "$TARGET_PATH/osint/dns_records.txt"
touch "$TARGET_PATH/osint/shodan_results.txt"
touch "$TARGET_PATH/osint/cloud_buckets.txt"

echo -e "[ * ] Verifying created structure..."

if [ -d "$TARGET_PATH/subdomains" ] && \
   [ -f "$TARGET_PATH/subdomains/subdomains.txt" ] && \
   [ -f "$TARGET_PATH/subdomains/live.txt" ] && \
   [ -f "$TARGET_PATH/subdomains/live_clean.txt" ] && \
   [ -f "$TARGET_PATH/subdomains/resolvers.txt" ] && \
   [ -d "$TARGET_PATH/js" ] && \
   [ -f "$TARGET_PATH/js/js_links.txt" ] && \
   [ -f "$TARGET_PATH/js/endpoints.txt" ] && \
   [ -f "$TARGET_PATH/notes.md" ] && \
   [ -f "$TARGET_PATH/target.info" ] && \
   [ -f "$TARGET_PATH/blacklist.txt" ] && \
   [ -d "$TARGET_PATH/assets" ] && \
   [ -d "$TARGET_PATH/reports" ] && \
   [ -d "$TARGET_PATH/nmap" ] && \
   [ -f "$TARGET_PATH/nmap/nmap_raw.txt" ] && \
   [ -f "$TARGET_PATH/nmap/open_ports.txt" ] && \
   [ -d "$TARGET_PATH/fuzzing" ] && \
   [ -f "$TARGET_PATH/fuzzing/directories.txt" ] && \
   [ -f "$TARGET_PATH/fuzzing/subdomains_fuzz.txt" ] && \
   [ -f "$TARGET_PATH/fuzzing/api_endpoints.txt" ] && \
   [ -f "$TARGET_PATH/fuzzing/vhosts.txt" ] && \
   [ -d "$TARGET_PATH/vulns" ] && \
   [ -f "$TARGET_PATH/vulns/vulnerabilities.txt" ] && \
   [ -f "$TARGET_PATH/vulns/poc_notes.txt" ] && \
   [ -d "$TARGET_PATH/screenshots" ] && \
   [ -d "$TARGET_PATH/exploits" ] && \
   [ -d "$TARGET_PATH/loot" ] && \
   [ -f "$TARGET_PATH/loot/credentials.txt" ] && \
   [ -f "$TARGET_PATH/loot/api_keys.txt" ] && \
   [ -f "$TARGET_PATH/loot/tokens.txt" ] && \
   [ -d "$TARGET_PATH/nuclei" ] && \
   [ -f "$TARGET_PATH/nuclei/nuclei_output.txt" ] && \
   [ -f "$TARGET_PATH/nuclei/critical_vulns.txt" ] && \
   [ -d "$TARGET_PATH/parameters" ] && \
   [ -f "$TARGET_PATH/parameters/urls.txt" ] && \
   [ -f "$TARGET_PATH/parameters/params.txt" ] && \
   [ -f "$TARGET_PATH/parameters/jsons.txt" ] && \
   [ -d "$TARGET_PATH/osint" ] && \
   [ -f "$TARGET_PATH/osint/emails.txt" ] && \
   [ -f "$TARGET_PATH/osint/dns_records.txt" ] && \
   [ -f "$TARGET_PATH/osint/shodan_results.txt" ] && \
   [ -f "$TARGET_PATH/osint/cloud_buckets.txt" ]; then
    
    echo "[ + ] All directories have been created!"
else
    echo "[ - ] ERROR: Some files or directories are missing!"
fi

echo "[ + ] Opening Virtual Studio Code"
cd "$TARGET_PATH"
code .