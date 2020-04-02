!# /usr/bin/bash


echo "Enter your name:" 
read name
echo "Hello $name"

# Read input after prompt
read -p "Username::" username
echo "Username is:: $username"

# Read input in silence
read -sp "Password:: " password
echo "Password:: $password"

# Read input without a variable
read -p "Full name::"
echo "Full name:: $REPLY"

# Read values into an array
echo "Enter folder names::"
read -a names
echo ${names[0]}, ${names[1]}, ${names[2]}