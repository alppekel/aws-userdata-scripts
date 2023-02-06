# aws-userdata-scripts


## Kali

This script will update kali AMI image and enable rdp service.
Copy the content of kali.sh into "userdata" textbox while launching instance.

In order to see the script output do following:
- connect kali instance via ssh
- run ``tail -f /var/log/cloud-init-output.log`` to see script output.
- If you see "*************** done ***************" in log file, that means script finished execution.

After script finished, run following command as root to upgrade tools and change password of kali user.
```
apt full upgrade -y
passwd kali
```
To connect instance via rdp:

- Create a ssh tunnel on client to connect instance via rdp as follow:
```
ssh -L 3390:localhost:3390 -N -f kali@<instance-public-ip> -i <pem file> 
```
- Connect ``localhost:3390`` via rdp.

### Resources
- <a href="https://www.kali.org/docs/cloud/aws/">Kali Official Docs</a>
