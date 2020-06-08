
#!/bin/bash -x
shopt -s extglob
echo "Enter pattern"
read pat
regex="^([a-z0-9\-]{3,}([\.\_\-+]{1}[A-Za-z0-9]{2,5})?([@]{1})[a-zA-Z0-9]{1,}[.]{1}[a-z]{3,}([.]{1})?([a-z]{2,3})?)$"
if [[ $pat =~ $regex ]]
then
echo "Valid"
else
echo "Invalid"
fi
