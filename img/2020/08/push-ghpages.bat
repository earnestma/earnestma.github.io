@ECHO OFF
ECHO Make sure: You are on the master branch
ECHO             and changes have been commited there.
ECHO --
ECHO --------------------------------------------------------------
ECHO --
ECHO            You have deleted the contents of the public folder
ECHO             excluding the git files.
PAUSE
cd C:\Users\earne
set /p site=What site?? (This assumes you are in /Users/earne/):
cd %site%
hugo
cd public
git status
PAUSE
git add .
set /p msg=Your commit message??:
git commit -m "%msg%"
git push origin master
cd ..
git submodule update --remote --recursive
ECHO Now you need to commit the submodule update - possibly in GitAhead/ Desktop.
PAUSE