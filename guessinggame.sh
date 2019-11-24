#!/bin/bash

#reads the current directory 
wc_out=($(ls -p | grep -v / | wc))
answer=${wc_out[0]}

##testing information
    #array1=($(echo $wc_out))
    #echo $wc_out
    #echo $array1
    #echo ${array1[*]}
    #echo ${array1[0]}
    #echo ${wc_out[*]}
    #echo ${wc_out[0]}
    #echo $answer

prompt_user () {
read -p "How many files do you think there are in this directory?: " guess
if [ $guess -eq $guess 2>/dev/null ]
    then
        if [[ $guess -lt $answer ]]
            then 
                echo "Too low"
                prompt_user
        elif [[ $guess -gt $answer ]]
            then
                echo "Too high"
                prompt_user
        elif [[ $guess -eq $answer ]]
            then
                echo "Congratulations, you are correct! There are "$answer" files in this directory. Good job!"
        fi
    else
        echo "Input is invalid, try again with an integer"
        prompt_user
fi
}

prompt_user 
