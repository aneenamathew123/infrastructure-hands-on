## Multi-feature branch deployment using Jenkins

## Problem Statement:
This task requires deployment of multiple feature branches of a web application from a Git repository to a
web server for features testing using jenkins.

## Objectives:
- create a jenkins job to deploy the application based on branch choice parameters.
- Use a custom workspace under /var/lib/jenkins
- The job should fetch branch specific code into the custom directory.

## Tools and Technologies
- jenkins (Freestyle Job)
- Gitea
- Publish Over SSH Plugin
- Linux
- SSH Key Authentication
- Apache Web Directory (/var/www/html)  

## Implementation steps:
- Installed required plugins such as Git,SSH and Publish over SSH
- Configured SSH key based authentication between Jenkins and web server 
- Created a Freestyle job with branch choice parameters (version1, version2, version3)
- Configured Git checkout into a custom workspace directory
- Transferred application files to remote server using SSH
- Deployed application to web server root directory

## Challenges encountered and learning:
- SSH authentication issues and learned the legacy industry standard to key based SSH into servers and transferring
  files and commands execution on SSH server
- Files uploaded to relative path's of the users home directory /home/user/var/www/html instead of system path /var/www/html
  and learned  absolute path vs relative path in publish over SSH
- Linux permission denied issues and learned linux directory ownership and handling of sudo privileges.

## Security considerations:
- While passwordless sudo was used in this lab to allow deployment into /var/www/html, this is not recommended in production.
- Enterprise environments use:
    Artifact repositories
    Configuration management tools (Ansible)
    Containers and orchestration platforms  to avoid privilege escalation issues.

## Outcome:
 Application deployed dynamically based on selected branch and was accessible through browser 

