#!/bin/zsh

# GitHub SSH Setup
echo -e "\033[0;34m- GitHub SSH Setup...\033[0m"
echo "Create SSH key"
SSH_KEY_PATH="$HOME/.ssh/github"
if [ ! -d "$SSH_KEY_PATH" ]; then
	mkdir "$SSH_KEY_PATH"
fi
# create SSH key
ssh-keygen -N "" -t ed25519 -f ${SSH_KEY_PATH}/id_ed25519
pbcopy <${SSH_KEY_PATH}/id_ed25519.pub

# GitHub login
echo -e "\033[0;34m- GitHub login start...\033[0m"
echo "First you need to choice SSH"
echo "Second you need to choice id_ed25519.pub"

gh auth login -w
source ~/.zshrc
