if [ -f exclude-items.txt ]; then
    echo Found exclude-items.txt. Using it to remove files
    sed $'s/\r$//' ./exclude-items.txt > ./exclude-items.unix.txt
    cat exclude-items.unix.txt | xargs -d '\n' rm -rf
    rm exclude-items.unix.txt exclude-items.txt
    echo Files after removing exclude list
    ls
else
    echo exclude file does not found.
fi
rm -- "$0"

ls