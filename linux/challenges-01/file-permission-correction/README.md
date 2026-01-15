# Correction of Permission Configuration on Critical Files

## Scenario
Critical system files on a Linux server were found to have misconfigured permissions during a security audit.  
Corrective actions were required using Access Control Lists (ACLs) to enforce granular, user-specific access control.

## Steps Taken
1. Verified the existing permission configuration of the critical file.
2. Checked active ACL entries for all users.
3. Ensured the file owner and group were set to root.
4. Granted read-only access to a specific user.
5. Removed all permissions for another specified user.

## Outcome
The permission configuration of /etc/hostname was successfully corrected using ACLs.  
This prevented unauthorized access to critical system files while maintaining necessary read access where required.
