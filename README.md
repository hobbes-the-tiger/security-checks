# Security check scripts

Mainly for my own practice and use, I write scripts to keep my Bash a bit less rusty and to run quick checks.

## Silver Sparrow Check

Feel free to submit or fix any bugs. This does not fix or remove anything, but checks for the existences of the files listed per here: 
https://redcanary.com/blog/clipping-silver-sparrows-wings/

Files:
* silver-sparrow-files.txt - list of current files that you can check for this
* silver-sparrow-check.sh - Bash script to check for the existence of the files.

## Running the script
1. Make sure you enable Full Disk access to Terminal, if you haven't already done this. This prevents the "Operation not permitted" stupidity that Apple for some reason does by default.
Instructions are here: https://osxdaily.com/2018/10/09/fix-operation-not-permitted-terminal-error-macos/

2. Download both files to the same location.

3. Look at the script first before you run it. Always a good idea :)

4. Run the script. "bash silver-sparrow-check.sh", and see if it works fine. Then run it with sudo if you're comfortable just in case you need file permissions.
