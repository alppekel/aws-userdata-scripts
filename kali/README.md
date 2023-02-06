# Kali


This script will set up kali from AMI image and enable rdp service.

Copy the content of "kali.sh" into "User data" textbox while launching instance.

In order to see the script output do following:
- connect kali instance via ssh
- run ``tail -f /var/log/cloud-init-output.log`` to see script output.
- If you see "*************** done ***************" in log file, that means script finished execution.

After script finished execution, you can run following command as root to upgrade tools and change password of kali user.
```
apt-get upgrade -y
passwd kali
```

To connect instance via rdp:
- Create a ssh tunnel on client to connect instance via rdp as follow:
```
ssh -L 3390:localhost:3390 -N kali@<instance-public-IP> -i <pem file> 
```
- Connect ``localhost:3390`` via rdp.

### Resources
- <a href="https://www.kali.org/docs/cloud/aws/">Kali Official Docs</a>
- <a href="https://www.kali.org/tools/kali-meta/#kali-linux-headless">kali-linux-headless</a>

