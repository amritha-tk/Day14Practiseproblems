
#!/bin/bash -x
shopt -s extglob
echo "Enter username"
read username
regex="^([A-Z]{1}[a-z]{2,}[ ]?[A-Z]{1}[a-z]{3,})$"
if [[ $username =~ $regex ]]
 then
   echo "Valid"
else
   echo "Invalid"
fi
