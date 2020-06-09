
#!/bin/bash -x
shopt -s extglob
echo "Enter password"
read password
length=$( echo -n $password | wc -m )
echo $length

if [[ $length -ge 8 ]]
then
       regex="^[A-Za-z0-9]*[^a-zA-Z0-9]{1}[a-zA-Z0-9]*$"
       if [[ $password =~ $regex ]]
       then
          echo "Valid"
      else
          echo "Invalid"

        fi
else
    echo "Password too short"
fi
