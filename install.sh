#!/usr/bin/env sh

msPath=$HOME/.config/memoryshell
mkdir $msPath
cp -r data memoryshell.sh $msPath

echo -e "\n(Change questions and answers path for your own dataset, 0 at the end mean that you have to answer, any other character or number will just show the answer)"
echo -e "\nAdd this line to the end of your ~/.bashrc or other shell:\n"
echo -e "---------| MemoryShell / メモリーシェル |---------\n"
echo "$msPath/memoryshell.sh $msPath/data/hiragana_questions.txt $msPath/data/hiragana_answers.txt 0"
echo -e "\n--------------------------------------------------\n"
