@echo off
cd C:\Users\Paran\Documents\Study\Thesis
del /s /q out
fmpp
xcopy /S copy\* out
cd out\ema
copy *.txt C:\Users\Paran\Documents\Dropbox\PersonalWiki
cd ..\..
