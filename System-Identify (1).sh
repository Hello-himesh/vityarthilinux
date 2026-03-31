#!/bin/bash
# Script 1: System Identity Report
# Author: [Nagahimesh Vuppala] | Course: Open Source Software
# --- Variables ---
STUDENT_NAME="Nagahimesh Vuppala" # Fill in your name
SOFTWARE_CHOICE="Linux Kernel" # Fill in your chosen software
# --- System info ---
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
# --- Display ---
echo "================================"
echo " Open Source Audit — $STUDENT_NAME"
echo "================================"
echo "Kernel : $KERNEL"
echo "User : $USER_NAME"
echo "Uptime : $UPTIME"
# TODO: Add distro name, date, and license message
