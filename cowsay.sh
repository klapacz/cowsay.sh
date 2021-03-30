#!/bin/sh

# max number of characters in single line
max_len=45
text=$*
len=${#text}

[ "$len" -gt "$max_len" ] && len=$max_len

border=$(printf '%0.s─' $(seq $len))

echo " .$border. "

echo "$text" | fold -sw$len | while read -r line; do
	printf "| %-${len}s |\\n" "$line"
done 

echo " '$border' "

echo "        \\   ^__^
         \\  (OO)\\_______
            (__)\\       )\\/\\
                ||----w |
                ||     ||
"
