# Automated Recon Tool 🔍

A simple, fast, and automated reconnaissance script written in Bash. This tool is designed to automate initial enumeration by running Nmap for port scanning and Gobuster for directory brute-forcing. 

## Features
- Automatically creates an organized folder for the target.
- Runs Nmap to discover open ports and services.
- Runs Gobuster to find hidden directories on web servers.
- Saves all scan outputs into neat text files for later review.

## Requirements
- Kali Linux (or any Linux distribution)
- `nmap` installed
- `gobuster` installed
- A wordlist (e.g., common.txt from SecLists)

## How to Use
1. Clone this repository to your Kali Linux terminal:
   `git clone https://github.com/pranjal211025/Automated-Recon_Tool.git`

2. Go into the folder:
   `cd Automated-Recon_Tool`

3. Give the script execute permissions:
   `chmod +x recon.sh`

4. Run the script:
   `./recon.sh`

*Disclaimer: This tool is created for educational purposes and ethical hacking only.*
