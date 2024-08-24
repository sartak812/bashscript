#!/bin/bash

# Վարժություն 1
echo "Shell Scripting is Fun!"

# Վարժություն 2
TEXT="Shell Scripting is Fun!"
echo $TEXT

# Վարժություն 3
HOSTNAME=$(hostname)
echo "This script is running on ${HOSTNAME}."

# Վարժություն 4
FILE_PATH="/etc/shadow"
if [ -e "$FILE_PATH" ]; then
    echo "Shadow passwords are enabled."
    if [ -w "$FILE_PATH" ]; then
        echo "You have permissions to edit $FILE_PATH."
    else
        echo "You do NOT have permissions to edit $FILE_PATH."
    fi
else
    echo "$FILE_PATH does not exist."
fi

# Վարժություն 5
for animal in man bear pig dog cat sheep
do
    echo $animal
done

# Վարժություն 6
echo "Enter a file or directory name:"
read FILE_PATH
if [ -f "$FILE_PATH" ]; then
    echo "$FILE_PATH is a regular file."
elif [ -d "$FILE_PATH" ]; then
    echo "$FILE_PATH is a directory."
else
    echo "$FILE_PATH is another type of file."
fi
ls -l $FILE


# Վարժություն 7
FILE_PATH=$1
if [ -f "$FILE_PATH" ]; then
    echo "$FILE_PATH is a regular file."
elif [ -d "$FILE_PATH" ]; then
    echo "$FILE_PATH is a directory."
else
    echo "$FILE_PATH is another type of file."
fi
ls -l $FILE_PATH


# Վարժություն 8
for FILE in "$@"
do
    if [ -f "$FILE_PATH" ]; then
    echo "$FILE_PATH is a regular file."
elif [ -d "$FILE_PATH" ]; then
    echo "$FILE_PATH is a directory."
else
    echo "$FILE_PATH is another type of file."
fi
ls -l $FILE_PATH
done
