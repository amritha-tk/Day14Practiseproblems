
#!/bin/bash -x
shopt -s extglob
echo "Enter pattern"
read pat
regex="^([a-z]{3,4}([\.\_\-\+]{1})?([A-Za-z]{3,4})?[@][a-zA-Z]{3,}[.]{1}co([.]{1})?([a-z]{2,3})?)$"
if [[ $pat =~ $regex ]]
then
echo "Valid"
else
echo "Invalid"
fi
