@echo off
echo clean-idea
call clean.bat
rd /s/q .idea
del /s/q *.iml