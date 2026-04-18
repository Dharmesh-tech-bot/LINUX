# Problem
Write a shell script named script.sh that reads a system log file from standard input and prints the unique usernames (in ascending order) of users who attempted to execute the sudo command but were denied access.

A denied sudo attempt is indicated by log entries containing the phrase:

user NOT in sudoers

📌 Requirements

Read input from standard input (stdin).

Identify only those lines where sudo access was denied.

Extract the corresponding username from each such line.

Print only unique usernames.

Output must be in ascending (sorted) order.

Sample Input:

Nov  5 07:09:44 es-lab-vm sudo: 24f3100102 : user NOT in sudoers ; TTY=pts/8 ; ...
Nov  5 07:14:22 es-lab-vm sudo: 24f3000101 : user NOT in sudoers ; TTY=pts/0 ; ...
Nov  5 07:22:22 es-lab-vm sudo: 24f2000085 : user NOT in sudoers ; TTY=pts/15 ; ...
Nov  5 07:35:14 es-lab-vm sudo: 24f3100189 : user NOT in sudoers ; TTY=pts/0 ; ...
Nov  5 07:50:11 es-lab-vm sudo: 24f2100085 : user NOT in sudoers ; TTY=pts/15 ; ...
Nov  5 07:09:44 es-lab-vm sudo: 24f3100102 : user NOT in sudoers ; TTY=pts/8 ; ...

output:

24f2000085
24f2100085
24f3000101
24f3100102
24f3100189




# solution

#!/bin/bash

# Read from standard input
grep "user NOT in sudoers" | \
awk -F'sudo: ' '{print $2}' | \
awk -F' :' '{print $1}' | \
sort | uniq






