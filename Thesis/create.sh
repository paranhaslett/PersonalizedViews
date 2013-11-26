#!/bin/csh
fmpp.sh
texworks ./out/Tex/Proposal.tex
cp ./out/public_html/* ~/public_html/
chmod 604 ~/public_html/*

