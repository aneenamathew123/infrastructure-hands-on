## Jenkins Ci Build Failure Due To Sudo And Missing Dependencies

## Problem Statement:
While building a shell script executed through a Jenkins Freestyle job, I encountered multiple build failures related to 
privilege escalation, missing dependencies, and command execution issues.The job was configured using the Execute Shell
 build step and was running in a non-interactive CI environment.

## Challenges Encountered:
During execution, the Jenkins build failed with the following errors:

- sudo: a terminal is required to read the password

- command not found

These errors caused the build to terminate unsuccessfully.

## Observations:
From the Jenkins console output, I observed the following:

- The Jenkins job was running in a non-interactive environment (no TTY).

- The job was executed by the Jenkins system user, not a Linux user.

- The job did not have permission to perform privileged operations that require password input.

To better understand this behavior, I reviewed Jenkins console logs and referred to official Jenkins documentation
 regarding job execution

## Root Cause Analysis:

The following conclusions were identified:

- Jenkins jobs run in a non-interactive CI environment and cannot respond to password prompts.

- CI jobs should not rely on sudo unless passwordless sudo is explicitly configured.

- The 'command not found' indicated that required system dependencies were not installed on the Jenkins server.

## Root Causes

The build failures occurred because the Jenkins job attempted to:

- Execute sudo commands in a non-interactive environment

- Install system dependencies during job execution

- Run binaries that were not present on the Jenkins server

## Solution:

To resolve the issue, the following steps were taken:

- The required system dependencies were installed directly on the Jenkins server  outside of the CI job.

- sudo commands were removed from the Jenkins job scripts.

After applying these changes, the Jenkins job executed successfully without permission or dependency-related failures.

## Key Takeaways:

- Jenkins jobs run non-interactively and should not expect password input.

- Avoid using sudo in CI pipelines unless properly configured with passwordless access.

- Install system-level dependencies before job execution. 

- CI jobs should focus on execution, not environment provisioning.
