#!/usr/bin/env sh

msPath=/home/$USER/.config/memoryshell

arg=0
path=$msPath/memoryshell.sh 
questions=$msPath/data/katakana_questions.txt 
answers=$msPath/data/katakana_answers.txt

$path $questions $answers $arg
