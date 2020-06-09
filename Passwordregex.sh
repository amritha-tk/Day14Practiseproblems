
#!/bin/bash -x
shopt -s extglob
echo "Enter password"
read password
length=$( echo -n $password | wc -m )
echo $length

if [[ $length -ge 8 ]]
# && [[ $password == +[A-Z]+ ]] && [[ $password == +[0-9]+ ]] && [[ $password == +[a-z]+ ]] && [[ $password == +[^a-zA-Z0-9]+ ]]
then
if [[ $(echo "$password" | awk '/[a-z]/ && /[A-Z]/ && /[0-9]/ && /[^a-zA-z0-9]/ ') ]]
then
echo "Valid"
       regex="^[A-Za-z0-9]*[^a-zA-Z0-9]{1}[a-zA-Z0-9]*$"
       if [[ $password =~ $regex ]]
       then
          echo "Valid"
      else
          echo "Invalid"

        fi
else
echo "invalid"
fi
else
    echo "Password too short"
fi
