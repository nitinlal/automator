#!/bin/bash
#!/bin/bash
#!/bin/bash

echo "Please enter your name:"
read name

## if name is empty throw an error and ask again
while [ -z "$name" ]; do
    echo "Name cannot be empty, please try again:"
    read name
done

echo "Please enter your age:"
read age

## if age is not a number throw an error and ask again
while ! [[ "$age" =~ ^[0-9]+$ ]]; do
    echo "Only numbers are allowed for age, please try again:"
    read age
done

echo "Glad you joined us, $name. You are $age years old."
