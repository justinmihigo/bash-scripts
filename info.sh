#!/bin/bash

# Output file

OUTPUT_FILE="info.txt"
> $OUTPUT_FILE  # Clear file if it exists

# Define colors (only for terminal, not used in output file)

GREEN='\033[0;32m'
BLUE='\033[1;34m'
NC='\033[0m'
BOLD= $(tput bold)
# Section Header Function (prints to both terminal and file)

print_section() {

    echo -e "\n${BLUE}===== $1 =====${NC}"

        echo -e "\n===== $1 =====" >> $OUTPUT_FILE

        }



        # Print and log function

      log() {

            echo -e "$1"

                echo -e "$1" >> $OUTPUT_FILE

                }



                # 1. System Info

                print_section "System Information"

                log "Hostname: $(hostname)"

                log "Current User: $(whoami)"

                log "System Uptime: $(uptime -p)"

                log "Date and Time: $(date)"



                # 2. CPU and Memory

                print_section "CPU and Memory"

                log "Number of CPUs: $(nproc)"

                log "CPU Model: $(lscpu | grep 'Model name' | awk -F: '{print $2}' | sed 's/^ *//')"

                log "Total RAM: $(free -h | awk '/Mem:/ {print $2}')"

                log "Free RAM: $(free -h | awk '/Mem:/ {print $4}')"


                # 3. Disk & Filesystem
		print_section "Disk & Filesystem"
		log "Disk Usage: $(df -h | grep '^/dev')"
		log "Mounted File systems:$(findmnt -lo fstype)"
		log "/home Usage: $(du -sh /home 2>/dev/null)"
		log "/var Usage:$(du -sh /var 2>/dev/null)"

		# 4. Networking
		print_section "Networking"
		log "IP Address(es):$(hostname -I)"
		log "Active Network Interfaces:\n$(ip -o link show | awk -F':' '{print $2}')"
		log "Top 5 Processes by CPU and Memory:\n$(ps -eo pid,comm,%mem,%cpu --sort=-%mem | head -n 6)"

		# End
		echo -e "\n${BLUE}==== Script Complete. Output saved to $OUTPUT_FILE ====${NC}"
