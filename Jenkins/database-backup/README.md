## Automated database backup using Jenkins

## Problem Statement:
This task requires creation and configuration of a jenkins job to automate MySQL database backup periodically and 
safely store them to a remote backup server.
This is a lab environment and in real world production environments direct SSH access from CI/CD servers to 
database servers require high security controls.

## Objectives:
- Connect to a remote database server
- MYSQL dump of the specific database in the server
- dynamic naming of the database backup file using current date in sql format
- copy the back up file to a remote back up server for storage
- automatically run the job for every 10 minutes using cron schedulling.

## Tools and Technologies:
- CI tool: Jenkins
- database: MySQL
- database server: MariaDB
- shell scripting: Bash

## Implementation Steps:
- created a freestyle job using Jenkins CI
- Stored database credentials in Jenkins Credentials Store
- Bound credentials to environment variables inside the job
- Configured build periodically for every 10 minutes
- Secure shell script was used with environment variables for data backup


## Outcome:
 Successfully automated periodic backup of MySQL database and securely stored on a remote storage


## key takeaways:

- Automated backups are very critical in productions systems and it ensures
  - disaster recovery
  - protection of critical business data
  - compliance with operational policies.
