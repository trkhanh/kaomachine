#!/bin/bash

checkfiglet(){
    if !figlet -v COMMAND &> /dev/null
    then 
        echo "figlet could not be found"
        exit 1
    fi

}

# Function for displaying logo1
logo1() {
clear
echo ""checkfiglet
echo " KAO ENGINE INSTALL!!"
echo ""
}

# Check if running as root.
super_user(){
    if [[ "$EUID" -ne 0 ]]; then
        clear
        echo " [!] KAO-MACHINE" | figlet -f mysql_secure_installation
        echo " ERROR!!! This script must be run as root."
        exit 1
    fi
super_user
}

# Dependencies
chk_dep(){
        checkfiglet
        clear
        logo1
}

chk_dep
super_user

echo " [✔] All dependencies are ready!"