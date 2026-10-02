#!/bin/bash

echo "================================================="
echo "    Automated Recon Tool - by Pranjal Patel      "
echo "================================================="
echo ""
echo -n "Enter the Target IP or Domain: "
read target

echo ""
echo "[+] Target set to: $target"
echo "[+] Starting basic setup..."
echo ""
echo "-------------------------------------------------"
echo "[+] Running Nmap Scan... Please wait."
echo "-------------------------------------------------"
nmap -sV -F $target -oN nmap_scan.txt
echo "[+] Nmap scan complete! Result saved in nmap_scan.txt"
echo "-------------------------------------------------"
echo ""
echo "-------------------------------------------------"
echo "[+] Running Gobuster Directory Scan... Please wait."
echo "-------------------------------------------------"
gobuster dir -u http://$target -w /usr/share/wordlists/dirb/common.txt -q -o gobuster_scan.txt
echo "[+] Gobuster scan complete! Result saved in gobuster_scan.txt"
echo "-------------------------------------------------"
echo ""
echo "-------------------------------------------------"
echo "[+] Generating Final Report..."
echo "-------------------------------------------------"

# Final report file banana aur data merge karna
echo "=== NMAP RESULTS ===" > final_report.txt
cat nmap_scan.txt >> final_report.txt

echo "" >> final_report.txt
echo "=== GOBUSTER RESULTS ===" >> final_report.txt
cat gobuster_scan.txt >> final_report.txt

# Purani temporary files ko delete karna
rm nmap_scan.txt gobuster_scan.txt

echo "[+] All done! Final report saved as final_report.txt"
echo "================================================="
