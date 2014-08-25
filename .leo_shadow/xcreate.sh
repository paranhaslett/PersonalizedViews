#@+leo-ver=4-thin
#@+node:paran.20140826080818.2353:@shadow ./create.sh
#@@language shell
#!/bin/bash
cd ~/Documents/Study/Thesis
rm -r out
export JAVA_HOME=/usr/lib/jvm/default-java/
~/Applications/fmpp_0.9.14/bin/fmpp
cp -r copy/* out
cd out
cp ./public_html/* ~/public_html/
chmod 604 ~/public_html/*
cd Tex/Proposal
ln ../../../../Bibtex/Thesis.bib
cd ../Thesis
ln ../../../../Bibtex/Thesis.bib




#@-node:paran.20140826080818.2353:@shadow ./create.sh
#@-leo
