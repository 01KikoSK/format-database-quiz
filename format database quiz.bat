@echo off
setlocal EnableDelayedExpansion

set questions[1]=What does the file extension ".bat" represent?
set answers[1]=Batch file

set questions[2]=How do you comment out a line in a batch file?
set answers[2]=REM or ::

set questions[3]=Which command is used to display text or variables in a batch file?
set answers[3]=echo

set questions[4]=What is the file extension commonly used for databases created in Microsoft Access?
set answers[4]=.accdb or .mdb

set questions[5]=What SQL command is used to retrieve data from a database?
set answers[5]=SELECT

set questions[6]=What does the term "relational database" mean?
set answers[6]=A database structured to recognize relations between stored items of information

set questions[7]=How do you create a new directory using a batch file?
set answers[7]=mkdir or md

set questions[8]=What is the purpose of the "set" command in a batch file?
set answers[8]=To assign a value to a variable

set questions[9]=Which command is used to delete a file in a batch script?
set answers[9]=del or erase

set questions[10]=What is a primary key in a database?
set answers[10]=A unique identifier for a record in a table

set questions[11]=How can you check if a file exists in a batch script?
set answers[11]=IF EXIST

set questions[12]=What does the term "foreign key" refer to in a database?
set answers[12]=A field in a table that is a primary key in another table

set questions[13]=Which command is used to create a new database in SQL?
set answers[13]=CREATE DATABASE

set questions[14]=How can you create a loop in a batch file?
set answers[14]=FOR or GOTO

set questions[15]=What is a flat file database?
set answers[15]=A database stored in a single table

set questions[16]=How do you assign a value to a variable in a batch file?
set answers[16]=set variable=value

set questions[17]=What is the purpose of the "goto" command in batch scripting?
set answers[17]=To jump to a labeled line in the script

set questions[18]=What does SQL stand for?
set answers[18]=Structured Query Language

set questions[19]=How can you pause the execution of a batch file?
set answers[19]=pause

set questions[20]=What are the advantages of using a relational database over a flat file database?
set answers[20]=Data integrity, reduced data redundancy, efficient data management

:quiz
for /L %%i in (1,1,20) do (
    set /p "answer=%%i. !questions[%%i]! "
    if "!answer!"=="!answers[%%i]!" (
        echo Correct!
    ) else (
        echo Incorrect. The correct answer is "!answers[%%i]!".
    )
)

endlocal
pause
