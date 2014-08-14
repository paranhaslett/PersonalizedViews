#--unknown-language--@+leo-ver=4-thin
#--unknown-language--@+node:paran.20140417093542.6973:@shadow ./fmpp/Tex/Thesis/Chapters/git.rst
#--unknown-language--@@color
#--unknown-language--@@language rest

\chapter{Using git}
Git is a repository which is usually used mostly for software development.
A repository is a way to keep old revisions of a document backed up so that if you ever need to revist a previous revision you can always access it.
Repositories also allow people to work on the same document at the same time.
This is done by combining all the changes to a document in a process called merging. 
In order to merge, any change an editor makes needs to be recorded and compared against the changes made by other editors.
If it is possible for those changes to co-exist then the changes will be made.
An example of changes that are considered to be able to co-exist is if all editors change a different part of the document.
If it is not possible for those changes to co-exist then there is a \"merge conflict\".
An example of a merge conflict is if any two changes on the document overlap with different values.
Before any merging can be done all of the changes need to be determined 

#--unknown-language--@<<Longest common subsequence>>
#--unknown-language--@+node:paran.20140417093542.6974:<<Longest common subsequence>>
Longest Common Subsequence
==========================
One method of discovering what has changed is to find the longest common subseqeunce (LCS).
An example of finding the longest common subsequence is:

Imagine we have have two similar sentances that we want to compare with each other.  
We would like to know what is the same and what is different.
A longest common subsequnce for the sentances would contain a list of all the characters that are the same and in the same order
So for the following sentances

\begin{verbatim}

\"The quick brown fox jumps over the lazy dog\"

\"The rapid brown fox vaults the lazy dog\"

\end{verbatim}
A longest common subsequence would be
\begin{verbatim}
\"The \",\"i\",\" brown fox \",\"v\",\" the lazy dog\"
\end{verbatim}
The letters that are missing from the LCS differ between the sentances.
#--unknown-language--@nonl
#--unknown-language--@-node:paran.20140417093542.6974:<<Longest common subsequence>>
#--unknown-language--@nl

#--unknown-language--@<<Git difference strategies>>
#--unknown-language--@+node:paran.20140417093542.6975:<<Git difference strategies>>
\section{Git difference strategies}
Git uses the following algorithms to find the LCS.
#--unknown-language--@<<Myers>>
#--unknown-language--@+node:paran.20140417093542.6976:<<Myers>>
\subsection{Myers}
#--unknown-language--@nonl
#--unknown-language--@-node:paran.20140417093542.6976:<<Myers>>
#--unknown-language--@nl
#--unknown-language--@<<Patience>>
#--unknown-language--@+node:paran.20140417093542.6977:<<Patience>>
\subsection{Patience}
#--unknown-language--@nonl
#--unknown-language--@-node:paran.20140417093542.6977:<<Patience>>
#--unknown-language--@nl
#--unknown-language--@<<Histogram>>
#--unknown-language--@+node:paran.20140417093542.6978:<<Histogram>>
\subsection{Histogram}
#--unknown-language--@nonl
#--unknown-language--@-node:paran.20140417093542.6978:<<Histogram>>
#--unknown-language--@nl
#--unknown-language--@-node:paran.20140417093542.6975:<<Git difference strategies>>
#--unknown-language--@nl

#--unknown-language--@<<The problem with LCS>>
#--unknown-language--@+node:paran.20140417093542.6979:<<The problem with LCS>>
#--unknown-language--@-node:paran.20140417093542.6979:<<The problem with LCS>>
#--unknown-language--@nl


#--unknown-language--@-node:paran.20140417093542.6973:@shadow ./fmpp/Tex/Thesis/Chapters/git.rst
#--unknown-language--@-leo
