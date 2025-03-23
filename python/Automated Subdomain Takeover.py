import requests

def check_subdomain_takeover(subdomains_file):
    with open(subdomains_file, "r") as file:
        subdomains = file.readlines()

    for sub in subdomains:
        sub = sub.strip()
        try:
            response = requests.get(f"http://{sub}", timeout=5)
            if "NoSuchBucket" in response.text or "Not Found" in response.text:
                print(f"[!] Potential Subdomain Takeover: {sub}")
        except requests.ConnectionError:
            continue

# Usage: Save subdomains in a file and pass it as an argument
check_subdomain_takeover("subdomains.txt")
