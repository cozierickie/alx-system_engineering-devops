Processes and Signals
This project covers fundamental concepts related to processes and signals in Linux environments. It includes tasks implemented in Bash scripting and C programming.

Learning Objectives
Understanding what a PID (Process ID) is and how to find it.
Recognizing the basics of processes, including their creation and termination.
Familiarity with signals and their importance in process management.
Tasks
Task 0: What is my PID
Objective: Write a Bash script to display its own PID.
Script: 0-what-is-my-pid
Task 1: List your processes
Objective: Write a Bash script to display a list of currently running processes.
Requirements: Display all processes, including those without a TTY, in a user-oriented format showing process hierarchy.
Script: 1-list_your_processes
Task 2: Show your Bash PID
Objective: Write a Bash script to display lines containing the word 'bash' to find the PID of the Bash process.
Requirements: Cannot use pgrep, must disable Shellcheck error SC2009.
Script: 2-show_your_bash_pid
Task 3: Show your Bash PID made easy
Objective: Write a Bash script to display the PID and process name of processes containing the word 'bash'.
Requirements: Cannot use ps.
Script: 3-show_your_bash_pid_made_easy
(Tasks 4 to 8 are omitted for brevity.)

Task 9: Process and PID file (Advanced)
Objective: Write a Bash script that creates a PID file, displays messages indefinitely, and responds to signals.
Requirements: Display specific messages on receiving SIGTERM and SIGINT signals, delete PID file on SIGQUIT or SIGTERM, and terminate.
Script: 100-process_and_pid_file
Task 10: Manage my process (Advanced)
Objective: Write a Bash script that manages a process, including starting, stopping, and restarting it.
Requirements: Create, start, stop, and restart a process, managing PID file accordingly.
Scripts: manage_my_process and 101-manage_my_process
Task 11: Zombie (Advanced)
Objective: Write a C program to create zombie processes.
Requirements: Create 5 zombie processes and display their PIDs.
Program: 102-zombie.c
