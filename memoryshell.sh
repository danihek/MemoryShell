#!/usr/bin/env sh

questions=data/questions.txt
answers=data/answers.txt
replyNeed=0

if [ "$1" != "" ]; then
    questions=$1
fi

if [ "$2" != "" ]; then
    answers=$2
fi

if [ "$3" != "" ]; then
    replyNeed=$3
fi

if [ ! -f "$questions" ]; then
    echo "Questions file does not exists!"
    exit 1
fi

if [ ! -f "$answers" ]; then
    echo "Answers file does not exists!"
    exit 1
fi

nb_of_lines_questions=$(wc -l < $questions)
nb_of_lines_answers=$(wc -l < $answers)

if [ "$nb_of_lines_answers" != "$nb_of_lines_questions" ]; then
    echo "File with questions does not match file with answers!"
    exit 1
fi

questionNB=$(shuf -i 1-$nb_of_lines_answers -n 1)

questionContent=$(awk "NR==$questionNB { print }" $questions)
answerContent=$(awk "NR==$questionNB { print }" $answers)
 
if [ "$replyNeed" == "0" ]; then
    echo
    read -p "Enter answer for $questionContent - " answer
    if [ "$answer" == "$answerContent" ]; then
        echo -e "Correct!\n"
    else
        echo -e "Incorrect!\n"
    fi
    echo -e "$questionContent - $answerContent"
else
    echo "To show answer for press anything to continue..."
    read -s -n 1 -p "$questionContent - "
    echo -e "$answerContent"
fi

