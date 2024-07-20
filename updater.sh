#!/usr/bin/env bash

# ANSI escape codes for green color and reset
GREEN="\033[1;32m"
CYAN="\033[1;36m"
RESET="\033[0m"

echo -e "\n${CYAN}*** Linux Mint Updater Script ***${RESET}\n"

sudo apt update

echo -e "\n${GREEN}Upgrading packages${RESET}\n"
sudo apt dist-upgrade -y

echo -e "\n${GREEN}Removing unused dependencies${RESET}\n"
sudo apt autoremove -y

echo -e "\n${GREEN}Cleaning package cache${RESET}\n"
sudo apt clean


echo -e "\n${GREEN}Updating Flatpak apps...${RESET}\n"
flatpak update -y

echo -e "\n${CYAN}*** Updater Script Run Complete ***${RESET}\n"
