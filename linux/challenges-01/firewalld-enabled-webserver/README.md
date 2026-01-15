# Allow Traffic on a Firewalld-Enabled Web Server

## Scenario
A web UI application is running on a Linux server with firewalld enabled.  
The application listens on port 6200, and incoming TCP traffic on this port must be allowed while keeping the firewall active.

## Steps Taken
1. Verified the status of firewalld.
2. Started and enabled firewalld if it was not running.
3. Set the default firewall zone to public.
4. Allowed incoming traffic on port 6200/tcp in the public zone.
5. Reloaded firewalld to apply the changes.

## Outcome
Incoming connections to the web application on port 6200/tcp were successfully enabled while maintaining firewall protection.  
This ensures secure access to the service while minimizing exposure to other processes running on the system.

