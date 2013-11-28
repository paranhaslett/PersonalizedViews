#!/bin/csh
cd ~/Study/Thesis
rm -r out
setenv JAVA_HOME /usr/pkg/java/sun-7
~/Applications/fmpp_0.9.14/bin/fmpp
pwd
cp -r copy/* out
cd out
cp ./public_html/* ~/public_html/
chmod 604 ~/public_html/*
cd Tex/Proposal
ln ../../../../Bibtex/Thesis.bib



