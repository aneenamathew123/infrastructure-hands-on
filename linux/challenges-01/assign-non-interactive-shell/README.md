# Non-Interactive Shell Assignment for a User

## Scenario
On a Linux server, certain users require non-interactive shells—similar to system service accounts and automated scripts to ensure least privilege access 
and improve security.

## Steps Taken
- Verified whether the user already exists.
- Created a new user
- Assigned a non-interactive shell (/sbin/nologin) to the user.
- Verified the user configuration and shell assignment.

## Outcome
A new user was successfully created with a non-interactive shell.  
This ensures:
- The user cannot log in interactively.
- Security is improved by reducing the attack surface for service or automation accounts.

