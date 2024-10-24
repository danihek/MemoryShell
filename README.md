# MemoryShell / メモリーシェル
Learn with every execution of your shell

## Why?
I was looking for the best solution for me for learning some japanese characters and words. Since I started using linux I spend all day in terminal, so I came up with idea with answering one question with every start of shell.

## Installation
Just use ``./install.sh`` or put it in your zshrc (or other shell) manually

## Usage
- first arg is for questions file path
- second arg is for answers file path
- if third arg is set to 0 you have to reply for question, otherwise you can just see the answer

Run Example:
```
./memoryshell.sh ./data/hiragana_questions.txt ./data/hiragana_answers.txt 0
```

Or after installation run with specific preset:
```
./start.sh
```

## How to create dataset
It's rather simple, you have to match number of lines in question and answer file. For example: answer for a question in first file have to be in the same line in the second file. 

### questions.txt

```
color of an banana
```

### answers.txt

```
yellow
```
