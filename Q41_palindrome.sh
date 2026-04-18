# Problem statement

Write a `script.sh` that reads each word from standard input and prints `PALINDROME` if the word is a palindrome, otherwise 

prints `NOT PALINDROME`. Each test case will have more than one inputs (words) each in a different line as shown below.
 
**Note:** The palindrome check must be case-insensitive. 

**Example Input**
```
  Amma
  Mama
  Brother
``` 
**Example Output** 
```
  PALINDROME
  NOT PALINDROME
  NOT PALINDROME
```



# solution 

#!/bin/bash

while read word
do
    # Convert to lowercase
    lower=$(echo "$word" | tr '[:upper:]' '[:lower:]')
    
    # Reverse the word
    rev_word=$(echo "$lower" | rev)
    
    # Check palindrome
    if [ "$lower" = "$rev_word" ]; then
        echo "PALINDROME"
    else
        echo "NOT PALINDROME"
    fi
done
