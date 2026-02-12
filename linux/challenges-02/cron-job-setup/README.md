## Setting up a cronjob

## Scenario:
This task requires deployment of a scheduled task across application servers to validate cron functionality
before automating real-world production scripts.

## Steps taken:
- Connected to the application server as assigned user
- checked the version of OS "cat /etc/os-release
- Installed cronie package for the particular linux distribution
- After installation enabled and started crond service
- configured a root cron job to run every 5 minutes.


## Outcome:
- Cron service installed and active
- Root cron job successfully scheduled
- Test file verified

## Key takeaways:
- validating cron jobs before production scripts prevents failures.
- Ensuring crond service is active before production scripts is critical for automating tasks.
- Testing with a sample job helps confirm timing and permissions and verfify tasks always after deployment.
