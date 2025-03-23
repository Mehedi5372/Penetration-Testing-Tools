# Penetration-Testing-Tools
This repository contains various penetration testing scripts

# Automated Subdomain Takeover

This Python script is designed to automate the process of detecting **subdomain takeover** vulnerabilities. Subdomain takeover occurs when a subdomain points to a resource (e.g., a service) that is no longer in use or has been deleted, and an attacker can take control of it by registering the service with the same subdomain.

## Table of Contents
- [Description](#description)
- [Installation](#installation)
- [Usage](#usage)
- [How It Works](#how-it-works)
- [Contributing](#contributing)
- [License](#license)

## Description
**Automated Subdomain Takeover** is a script that helps penetration testers, bug bounty hunters, and security researchers quickly identify subdomains that are vulnerable to takeover. The script checks subdomains to see if they are associated with any external services (e.g., AWS S3, GitHub Pages, Heroku, etc.) and if those services are unclaimed, leaving the subdomain vulnerable for takeover.

## Installation
Clone this repository to your local machine:

git clone https://github.com/Mehedi5372/Penetration-Testing-Tools.git
cd Penetration-Testing-Tools

Install any necessary dependencies (if applicable): pip install -r requirements.txt


## Usage
To run the **Automated Subdomain Takeover** script, follow the steps below:

1. Make sure you have Python 3 installed.
2. Navigate to the directory containing the script.
3. Run the script by providing a list of subdomains or a domain to scan.

### Example: python Automated_Subdomain_Takeover.py --domains example.com --api_key YOUR_API_KEY


This command will scan subdomains of `example.com` for potential takeover vulnerabilities.

### Command-line Arguments:
- `--domains`: A domain or list of domains to check for subdomain takeover.
- `--api_key`: Your API key for any external services the script interacts with (e.g., VirusTotal API).

## How It Works
The script works by checking a list of subdomains associated with the target domain. It then queries external services to see if any of the subdomains point to resources that are unclaimed, which makes them vulnerable to takeover. The script automates this process, saving time for penetration testers.

### Steps:
1. Collect a list of subdomains (either from a pre-existing list or discovered during recon).
2. Check if each subdomain is associated with a known service (e.g., AWS, GitHub, Heroku).
3. Verify whether the service associated with the subdomain is active or unclaimed.
4. Report any subdomains that are vulnerable to takeover.

## Contributing
If you'd like to contribute to this project, please follow these steps:

1. **Fork** the repository.
2. Create a new **branch** (`git checkout -b feature-branch`).
3. **Commit** your changes (`git commit -m "Added new feature or fix"`).
4. **Push** to your branch (`git push origin feature-branch`).
5. Create a **Pull Request**.

## License
This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.

## Contact Information
If you have any questions, suggestions, or issues, feel free to reach out:

**Email**: mr.mehedihasan53@proton.me




