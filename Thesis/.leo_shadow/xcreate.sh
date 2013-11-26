#@+leo-ver=4-thin
#@+node:hasletpara.20130905134207.1647:@shadow ./create.sh
#@@language shell
#!/bin/csh
fmpp.sh
texworks ./out/Tex/Proposal.tex
cp ./out/public_html/* ~/public_html/
chmod 604 ~/public_html/*

#@-node:hasletpara.20130905134207.1647:@shadow ./create.sh
#@-leo
