## Update message of the day on all application and database servers

## Scenario:
This task simulates a real-world compliance scenario where security-approved login banners must be consistently 
applied across all linux application servers and database servers.
The objective was to automate banner deployment from a centralized jump host while maintaining secure privilege 
escalation and proper file ownership.


## Steps taken:
- Verified the message banner on jumphost server existed or not.
- Used SSH automation for login into multiple remote servers.
- Designed a scalable Bash script using a server inventory file.
- Deployed the banner to all target systems.
- Enforced right permissions and ownership 
- Inlcuded error handling to prevent failures during deployment.

## Tools and Technologies:
- Bash scripting
- SSH
- SCP
- Linux file permissions.

## Security consideration:
Instead of giving full passwordless sudo access for the user, privilege escalation was restricted  to only a command "install".
  		
user ALL=(root) NOPASSWD: /usr/bin/install


## Outcome:
Successfully automated deployment of login banners from jump host server to multiple servers and demonstrated
scalable infrastructure automation using bash.
