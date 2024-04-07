#!/bin/bash

datapath=./data
questions=$datapath/questions.txt
answers=$datapath/answers.txt

nb_of_lines_questions=$(wc -l < $questions)
nb_of_lines_answers=$(wc -l < $answers)

if [ "$nb_of_lines_answers" != "$nb_of_lines_questions" ]; then
    echo "File with questions does not match file with answers!"
    exit 1
fi

questionNB=$(shuf -i 1-$nb_of_lines_answers -n 1)

questionContent=$(awk "NR==$questionNB { print }" $questions)
answerContent=$(awk "NR==$questionNB { print }" $answers)
 
read -p "Enter answer for $questionContent - " answer

if [ "$answer" == "$answerContent" ]; then
    echo "Correct!"
else
    echo "Incorrect!"
fi

echo "$questionContent - $answerContent"
