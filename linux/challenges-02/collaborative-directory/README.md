## Set up a collaborative directory

## Scenario:
This task requires a secure group based access control for the "Developer Team" by creating a collaborative directory
where only the group members can acess data and the group should own files inside the direcory. The directory 
should be read/write/execute to the user and group owners, and others should not have any access.
 
## Steps Taken:
- Created a directory structure /devoloper/data
- Changed group ownership of the directory
- Assigned the bit to inherit group ownership using 'setgid'
- Verified the ownership and inheritance of the directory


## Outcome:
created a collaborative directory for secure team collaboration and it ensures a strict acess control for the 
directory only by team members.

## Key Takeaways

- Linux access control is managed through user, group, and others permission model
- The 'setgid' bit ensures group consistency for collaborative environments
- Proper permission isolation prevents unauthorized access
- Group-based design improves security and operational efficiency

