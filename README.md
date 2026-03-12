# Linux Security Log Analysis Lab

## Objective

This project analyzes Linux authentication logs to identify authentication failures and privileged command activity.

The goal of the investigation is to simulate basic security log analysis performed by a SOC analyst.

---

## Environment

OS: Kali Linux  
Log file analyzed: /var/log/auth.log  

Tools used:

- grep
- sort
- uniq
- wc
- Bash scripting

---

## Investigation Workflow

1. Identify authentication logs inside `/var/log`
2. Search for authentication failures
3. Count suspicious events
4. Review privileged command execution
5. Automate log investigation using a Bash script

---

## Detection Logic

Authentication failures were detected using the following command:

-> grep -Ei "failed|failure|authentication|pam_unix|su:" /var/log/auth.log


This command identifies authentication failures related to login attempts or user switching events.

---

## Key Findings

During the investigation:

- 3 authentication failure events were identified
- These events occurred during failed attempts to switch users using `su`
- Privileged commands executed using `sudo` were successfully logged

---

## Automation Script

The script used to automate log analysis is located in:

 -> scripts/detect_auth_activity.sh

 
This script performs:

- authentication failure detection
- sudo activity monitoring
- log summary generation

---

## Skills Demonstrated

- Linux log analysis
- Authentication monitoring
- Security investigation
- Bash scripting
- Security documentation
