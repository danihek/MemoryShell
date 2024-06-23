#!/bin/bash

path=/home/$USER/.config/memoryshell/memoryshell.sh 
questions=/home/$USER/.config/memoryshell/data/katakana_questions.txt 
answers=/home/$USER/.config/memoryshell/data/katakana_answers.txt
arg=0
$path $questions $answers $arg
