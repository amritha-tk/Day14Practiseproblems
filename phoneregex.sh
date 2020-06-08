
#!/bin/bash -x
shopt -s extglob
echo "Enter the phonenum"
read phonenum
regex="^[1-9]{2}[ ]?[0-9]{3,10}$"
#"^([91]?[ ]?[0-9]{1,10})$"
if [[ $phonenum =~ $regex ]]
  then
    echo "valid"
  else
    echo "Invalid"
fi
