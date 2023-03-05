#!/bin/bash

# Define colors
GREEN="\033[0;32m"
RED="\033[0;31m"
YELLOW="\033[0;33m"
BLUE="\033[0;34m"
NC="\033[0m"

# Define functions to display headers and messages
display_header() {
    echo -e "${GREEN}"
    echo "*******************************************************"
    echo "        Welcome to Bug Bounty Hunting Tools! 🐞        "
    echo "   This script will install the most popular tools.    "
    echo "*******************************************************"
    echo -e "${NC}"
}

display_promotion() {
    echo -e "${BLUE}"
    echo "*******************************************************"
    echo "              Hack with passion 🔥                     "
    echo "   Follow me on Twitter/Instagram @withamankr          "
    echo "*******************************************************"
    echo -e "${NC}"
}

display_motivation() {
    echo -e "${RED}"
    echo "*******************************************************"
    echo "                Happy hunting! 🕵️‍♂️🕵️‍♀️                   "
    echo "          Remember, persistence pays off.              "
    echo "*******************************************************"
    echo -e "${NC}"
}

display_message() {
    local color=$1
    local message=$2
    echo -e "${color}${message}${NC}"
}

# Define function to install tools
install_tools() {
    # Print header
    display_message "${YELLOW}" "\n#######################################################"
    display_message "${YELLOW}" "#                                                     #"
    display_message "${YELLOW}" "#         Bug Bounty Hunting Tools Installer          #"
    display_message "${YELLOW}" "#                                                     #"
    display_message "${YELLOW}" "#######################################################"
    display_message "${NC}" ""

    # Prompt user to confirm installation
    read -p "$(display_message "${BLUE}" "\nAre you sure you want to install all the tools? (y/n) ")" choice

    # If user confirms installation
    if [[ "$choice" =~ ^(yes|y|Y)$ ]]; then
        display_message "${YELLOW}" "\nStarting installation..."

        # Install subdomain enumeration tools
        display_message "${GREEN}" "Installing subdomain enumeration tools..."
        sudo apt-get update -y && sudo apt-get install -y amass subfinder assetfinder subdomainizer sublister findomain
        display_message "${GREEN}" "Subdomain enumeration tools installed successfully."
                display_message "${BLUE}" "#######################################################"
        display_message "${NC}" ""

        # Install subdomain takeover tools
        display_message "${GREEN}" "Installing subdomain takeover tools..."
        sudo apt-get install -y subjack subover autosubtakeover tko-subs
        display_message "${GREEN}" "Subdomain takeover tools installed successfully."
                display_message "${BLUE}" "#######################################################"
        display_message "${NC}" ""

        # Install cloud workflow tools
        display_message "${GREEN}" "Installing cloud workflow tools..."
        sudo apt-get install -y awscli aws-recon festin lazys3 s3brute flumberboozle slurp
        display_message "${GREEN}" "Cloud workflow tools installed successfully."
                display_message "${BLUE}" "#######################################################"
        display_message "${NC}" ""

        # Install fuzzing tools
        display_message "${GREEN}" "Installing fuzzing tools..."
        sudo apt-get install -y gobuster wfuzz ffuf dirsearch
        display_message "${GREEN}" "Fuzzing tools installed successfully."
                display_message "${BLUE}" "#######################################################"
        display_message "${NC}" ""

        # Install visual inspection tools
        display_message "${GREEN}" "Installing visual inspection tools..."
        sudo apt-get install -y aquatone gowitness httpscreenshot
        display_message "${GREEN}" "Visual inspection tools installed successfully."
                display_message "${BLUE}" "#######################################################"
        display_message "${NC}" ""

        # Install content discovery tools
        display_message "${GREEN}" "Installing content discovery tools..."
        sudo apt-get install -y gospider hakrawler photon paramspider
        display_message "${GREEN}" "Content discovery tools installed successfully."
                display_message "${BLUE}" "#######################################################"
        display_message "${NC}" ""

        # Install CMS tools
        display_message "${GREEN}" "Installing CMS tools tools..."
        sudo apt-get install -y wpscan drupwn wig
        display_message "${GREEN}" "CMS tools installed successfully."
                display_message "${BLUE}" "#######################################################"
        display_message "${NC}" ""

        # Install GIT enum tools
        display_message "${GREEN}" "Installing GIT enum tools..."
        sudo apt-get install -y githound gitgraber trufflehog gitscanner
        display_message "${GREEN}" "GIT enum tools installed successfully."
                display_message "${BLUE}" "#######################################################"
        display_message "${NC}" ""

        # Install frameworks
        display_message "${GREEN}" "Installing frameworks..."
        sudo apt-get install -y metasploit-framework armitage beef
        display_message "${GREEN}" "Frameworks installed successfully."
                display_message "${BLUE}" "#######################################################"
        display_message "${NC}" ""

        # Install wordlists
        display_message "${GREEN}" "Installing wordlists..."
        sudo apt-get install -y wordlists seclists dirb
        display_message "${GREEN}" "Wordlists installed successfully."
                display_message "${BLUE}" "#######################################################"
        display_message "${NC}" ""

        # Install port scanning tools
        display_message "${GREEN}" "Installing port scanning tools..."
        sudo apt-get install -y nmap masscan unicornscan
        display_message "${GREEN}" "Port scanning tools installed successfully."
                display_message "${BLUE}" "#######################################################"
        display_message "${NC}" ""

        # Install fingerprint & CVE tools
        display_message "${GREEN}" "Installing fingerprint & CVE tools..."
        sudo apt-get install -y whatweb nikto wpscan sqlmap joomscan
        display_message "${GREEN}" "Fingerprint & CVE tools installed successfully."
                display_message "${BLUE}" "#######################################################"
        display_message "${NC}" ""

        # Install JS enum tools
        display_message "${GREEN}" "Installing JS enum tools..."
        sudo apt-get install -y linkfinder jsbeautifier jsdetox subjs
        display_message "${GREEN}" "JS enum tools installed successfully."
                display_message "${BLUE}" "#######################################################"
        display_message "${NC}" ""

       display_message "${YELLOW}" "\n#######################################################"
       display_message "${YELLOW}" "#                                                     #"
       display_message "${YELLOW}" "#          All tools installed successfully.          #"
       display_message "${YELLOW}" "#             Project  Secure-Discovey                #"
       display_message "${YELLOW}" "#                                                     #"
       display_message "${YELLOW}" "#######################################################"
    else
       display_message "${RED}" "\n#######################################################"
       display_message "${RED}" "#          Installation cancelled by user.            #"
       display_message "${RED}" "#                                                     #"
       display_message "${RED}" "#######################################################"
    fi
}

# Call functions
display_header
display_promotion
display_motivation
install_tools
