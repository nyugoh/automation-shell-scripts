#!/bin/bash

# Generate SSH keys.

echo "Welcome to SSH key automation"

echo "Enter your email, if you using the keys on Github, use the email registered on github"
echo ""

read email

echo Your email is $email

echo "Generating keys"

ssh-keygen -t rsa -C $email

echo "\n\n Testing the keys,"

ssh -T git@github.com

echo "Copy the key below and use it where needed.(No spaces around the text)\n\n"

cat ~/.ssh/id_rsa.pub

echo "\n\nBye, Thanks for using this tool"
