# Bug Bounty Hunt Folder Creator

A lightweight and efficient Bash script designed to automate the creation of a standardized, professional directory structure for Bug Bounty hunting and Penetration Testing engagements. This tool helps security researchers organize their reconnaissance data, vulnerability logs, and proof-of-concept files from day one.

## Features

- **Automated Directory Architecture**: Creates dedicated folders for subdomains, ports, fuzzing, parameters, OSINT, screenshots, and more.
- **Pre-configured Templates**: Automatically generates an enriched `notes.md` checklist and vulnerability log, alongside a structured `target.info` file.
- **Safety Checks**: Prevents accidental overwrites by checking if the target directory already exists before execution.
- **Workspace Integration**: Automatically launches Visual Studio Code inside the newly created target workspace upon successful setup.

## Directory Structure Generated

```text
target_name/
├── assets/
├── exploits/
├── reports/
├── screenshots/
├── blacklist.txt
├── notes.md
├── target.info
├── subdomains/
│   ├── live.txt
│   ├── live_clean.txt
│   ├── resolvers.txt
│   └── subdomains.txt
├── js/
│   ├── endpoints.txt
│   └── js_links.txt
├── nmap/
│   ├── nmap_raw.txt
│   └── open_ports.txt
├── fuzzing/
│   ├── api_endpoints.txt
│   ├── directories.txt
│   ├── subdomains_fuzz.txt
│   └── vhosts.txt
├── vulns/
│   ├── poc_notes.txt
│   └── vulnerabilities.txt
├── loot/
│   ├── api_keys.txt
│   ├── credentials.txt
│   └── tokens.txt
├── nuclei/
│   ├── critical_vulns.txt
│   └── nuclei_output.txt
├── parameters/
│   ├── jsons.txt
│   ├── params.txt
│   └── urls.txt
└── osint/
    ├── cloud_buckets.txt
    ├── dns_records.txt
    ├── emails.txt
    └── shodan_results.txt
```

## Installation

1. Clone the repository to your local machine:
   ```bash
   git clone https://github.com/PPeter2/Bug-Bounty-Hunt-Tool.git
   ```

2. Navigate into the directory:
3. Grant execution permissions to the script:
   ```bash
   chmod +x bughunt-create.sh
   ```

## Usage

Run the script by providing the name of the project or target organization as an argument:

```bash
./bughunt-create.sh <Target_Name>
```

### Example

```bash
./bughunt-create.sh example_inc
```

### Help Menu

To view the usage instructions at any time, run (Currently not available):

```bash
./bughunt-create.sh -h
# or
./bughunt-create.sh --help
```

## Prerequisites

- **Operating System**: Linux (Tested on Kali Linux)
- **Dependencies**: Visual Studio Code (`code` command line utility enabled)

## License

This project is licensed under the MIT License. Feel free to modify and use it for your own security engagements.
