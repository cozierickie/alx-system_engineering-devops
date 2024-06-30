Web Stack Debugging #2
This project focuses on web stack debugging and secure service configuration on Ubuntu 20.04 LTS.

Tasks Overview
Task 0: Run software as another user
Script: 0-iamsomeoneelse

This script runs the whoami command as a specified user.

Usage:
./0-iamsomeelse <username>


Replace <username> with the user you want to check.

Task 1: Run Nginx as Nginx
Script: 1-run_nginx_as_nginx

This script configures Nginx to run as the nginx user instead of root, and ensures it listens on all active IPs on port 8080.

Task 2: 7 lines or less (Advanced)
Script: 100-fix_in_7_lines_or_less

A condensed version of Task 1's script, limited to 7 lines or fewer.


Certainly! Here's a sample README.md file for your project, summarizing the tasks and providing instructions:

Web Stack Debugging #2
This project focuses on web stack debugging and secure service configuration on Ubuntu 20.04 LTS.

Tasks Overview
Task 0: Run software as another user
Script: 0-iamsomeoneelse

This script runs the whoami command as a specified user.

Usage:
bash
./0-iamsomeelse <username>
Replace <username> with the user you want to check.

Task 1: Run Nginx as Nginx
Script: 1-run_nginx_as_nginx

This script configures Nginx to run as the nginx user instead of root, and ensures it listens on all active IPs on port 8080.

Task 2: 7 lines or less (Advanced)
Script: 100-fix_in_7_lines_or_less

A condensed version of Task 1's script, limited to 7 lines or fewer.

Requirements
All scripts are written in Bash and must be executable.
Scripts should pass Shellcheck without any errors.
Ensure each script has a shebang (#!/usr/bin/env bash) as the first line.
Include a README.md file at the root of the project directory.
Usage
Clone the repository:

bash
git clone <repository_url>

cd 0x12-web_stack_debugging_2
Navigate to each task directory and run the respective scripts:
bash
cd 0-iamsomeoneelse
./0-iamsomeelse <username>

cd ../1-run_nginx_as_nginx
./1-run_nginx_as_nginx

cd ../100-fix_in_7_lines_or_less
./100-fix_in_7_lines_or_less
