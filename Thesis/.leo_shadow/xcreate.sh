#@+leo-ver=4-thin
#@+node:hasletpara.20130905134207.1647:@shadow ./create.sh
#@@language shell
#!/bin/csh
cd ~/Study/Thesis
rm -r out
setenv JAVA_HOME /usr/pkg/java/sun-7
~/Applications/fmpp_0.9.14/bin/fmpp
cp -r copy/* out
cd out
cp ./public_html/* ~/public_html/
chmod 604 ~/public_html/*
cd Tex/Proposal
ln ../../../../Bibtex/Thesis.bib



#@-node:hasletpara.20130905134207.1647:@shadow ./create.sh
#@-leo
