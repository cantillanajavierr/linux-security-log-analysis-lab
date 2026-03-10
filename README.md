# Linux Security Log Analysis Lab

## Project Overview
This project analyzes Linux authentication logs to identify suspicious activity such as failed authentication attempts and privileged command execution.

The investigation focuses on reviewing authentication-related events, analyzing sudo activity, and automating basic log monitoring with a Bash script.

## Environment
- OS: Kali Linux
- Log file analyzed: `/var/log/auth.log`
- Tools used:
  - grep
  - sort
  - uniq
  - wc
  - Bash

## Investigation Steps
1. Reviewed available logs in `/var/log`
2. Identified the authentication log file
3. Searched for authentication failure events
4. Counted suspicious authentication-related entries
5. Investigated sudo activity
6. Created a Bash script to automate log review

## Key Findings
- Authentication failure events were found in the logs.
- These events were related to failed `su` authentication attempts.
- Sudo commands executed by the user were successfully logged.
- The system recorded both authentication activity and privileged command usage.

## Script
The automation script used in this project is located here:

`scripts/detect_auth_activity.sh`

## Screenshots
Screenshots of the investigation are stored in the `screenshots/` folder.

## Skills Demonstrated
- Linux log analysis
- Authentication monitoring
- Security event investigation
- Bash scripting
- Security documentation
