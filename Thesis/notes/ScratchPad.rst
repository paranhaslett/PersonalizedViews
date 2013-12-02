This project will also test if there are any advantages in comparison on a check-in by check-in basis rather than simply comparing the most recent check-in for two branches against each other. Again this will be done by examining if the total amount of conflicts can be reduced. Some of the conflicts will also be manually examined to see if they are simpler or more simply resolved using this process. This could identify if the maintenance of the version control system could be simplified.
One of the things that will be investigated is if the changing of variable or method names is possible. This is going to be a challenge as if the method is or variable is not private or local the use of it could be spread over a number of files. For this reason initially only private methods, private variables and local variables will be considered. Investigation needs to be done to see if some of these changes are already covered by ''JDime''.
Evidence of this could be found by a reduced number of conflicts. What this could mean for developers in a multi-developer environment is that the branch of code that they work on could be in a more consistent state. This would hopefully reduce the time spent trying to comprehend the changes that another developer has made.

This paper will test the view that being able to automatically discern and manually mark items as being related between two will reduce the amount of conflicts that occur. Initially the automatic marking all comments as being irrelevant will be tested to see if it reduces the merge conflicts. The results will be compared against the ''JDime'' system without any additional features. As things progress this could give us a clearer indication about what things could be manually marked as being equivalent.
The proposed approach is to look at the code associated with Git and JDime and figure out how we can relate each step in git to a merge. Using JDime and Git as a starting point see anything can be gained by using the additional steps rather than just merging the top items in a single merge . This should not be as computationally expensive as it sounds if the semi-structured approach set forward by Le{\ss}nich and Apel should mean that this is only necessary for conflicting items \cite{LeBenich2012} \cite{Apel2011}. By merging some of the refactoring aware functionality of JDime with GIT we plan to further reduce the amount of merge conflicts. 
There is already some refactoring aware merge tools that have been researched. An example would be the ''JDime'' system proposed by Apel \cite{Apel2011}. Most of these however, are general purpose and have been created as difference or merge tools that can be plugged into various version control systems. What this could mean is that using the progressive changes in a distributed system has not been explored.
A way to keep track of irrelevant code would be to create a third branch which only pulls down the changes and is never used to commit changes. Although this would be suitable for the situation where there was throwaway code, comments or debugging it would be harder to maintain without additional tooling. It would also be harder to manually identify equivalent code segments that do not need to be merged.
One way of identifying functionally equivalent code would be to use annotations in the source file as indicators. A unique key would possibly be needed if the block of code was functionally equivalent to differing code in other branches. A different annotation may need to be used to indicate that items such as code for debugging purposes, throwaway code or comments specific to a view are not merged. The benefit of this is that it can eliminate unnecessary merging when either the code has been marked as having same intention or if the code is irrelevant in other branches.
Instead of just writing a TODO to say this is not the best way to implement the code placing some marker in the file so that whoever copies the code now become responsible for manually coping across the unwanted hack or rewriting it properly is a good feature. The way of marking code as being superfluous or 

#--unknown-language-- The advantages to doing this are
#--unknown-language-- The way to test this is to mark some code as being 
#--unknown-language-- functionall equivilent i
  

#--unknown-language-- The solution to these issues that I am proposing goes a 
#--unknown-language-- little further in separating
#--unknown-language-- initially as a diff tool for GIT
#--unknown-language-- initially dealing with code comments that may not need 
#--unknown-language-- to be transfered
\section{Background}
There are a number of methodologies, designs and practices that are related.  These have been used in the past to come to a common understanding or a different abstraction of the source code.
\subsection{How the proposed work is useful}
There 
Each person has different ways in which they best understand, develop and refactor code.  Sometimes there are even different ways in which an individual will approach a different task or challenge.  We will now examine those issues in more detail

#--unknown-language-- 
#--unknown-language--  This is meant to be done to tidy the code in 
#--unknown-language-- preparation for other developers to add further 
#--unknown-language-- features. What invariably happens in practice is the 
#--unknown-language-- code is left in what appears to be a mess.  This is 
#--unknown-language-- often blamed on someone not appropriately cleaning up 
#--unknown-language-- after themselves. It could also be explained by the fact 
#--unknown-language-- that there is more than one way people could best view 
#--unknown-language-- the code.
#--unknown-language-- 
#--unknown-language-- The refactoring that one person has done is hard to 
#--unknown-language-- comprehend by someone with a differing perspective.  
#--unknown-language-- This is often blamed as the refactored code being poorly 
#--unknown-language-- documented but in business there is little time to 
#--unknown-language-- explain your individual perspective in depth.  Well 
#--unknown-language-- documented code would also be code that cluttered with 
#--unknown-language-- different documentation from each developer who has a 
#--unknown-language-- different perspective. Some of this documentation 
#--unknown-language-- clutter could be caused by something as having a 
#--unknown-language-- different way to explain the code.
#--unknown-language-- 
#--unknown-language-- It is not just different people that could have a 
#--unknown-language-- different perspective. Different changes could also 
#--unknown-language-- involve understanding the code from a different point of 
#--unknown-language-- view.  This means some of the perceived mess in your own 
#--unknown-language-- code could simply be that you are doing a different 
#--unknown-language-- task.
#--unknown-language-- 
#--unknown-language-- When any of these things happen you need to refactor the 
#--unknown-language-- code to get it into a condition where you can make the 
#--unknown-language-- appropriate change.  This presents a problem as when you 
#--unknown-language-- refactor you do not just refactor your individual view 
#--unknown-language-- for the function you intend to implement.  What happens 
#--unknown-language-- is you refactor the view for everyone.  This results in 
#--unknown-language-- a lot of confused people who have to re-learn the code 
#--unknown-language-- from the point of view you had when making that 
#--unknown-language-- individual change.
#--unknown-language-- 
#--unknown-language-- This means after the refactoring the code is again in a 
#--unknown-language-- foreign format which takes time to adjust to in order to 
#--unknown-language-- once again become productive.
#--unknown-language-- 
#--unknown-language-- What is required is a way to retain the code as much as 
#--unknown-language-- possible in both its original format for other 
#--unknown-language-- developers and in the new refactored format to best 
#--unknown-language-- apply a change or a series of changes.
#--unknown-language-- This would suggest that the internal way that each 
#--unknown-language-- person interprets and understands the code not only 
#--unknown-language-- affects the results that they produce but also the speed 
#--unknown-language-- at which they become familiar with existing code.
#--unknown-language-- 
#--unknown-language-- In the coding environment this asset is often neglected 
#--unknown-language-- as everyone is forced to focus on the single source.
#--unknown-language-- This source is at least initially in a foreign format 
#--unknown-language-- which takes time to adjust to in order to become 
#--unknown-language-- productive.
#--unknown-language-- 
#--unknown-language-- The learning process can be sped up by providing the 
#--unknown-language-- means to change that foreign format into something that 
#--unknown-language-- seems to make more logical sense. The very act of going 
#--unknown-language-- through the code and reprocessing it in a clearer form 
#--unknown-language-- will help with the understanding of the code.
\subsection{Other Background}
#--unknown-language-- GIT
#--unknown-language-- Distributed Version control
#--unknown-language-- references from other non-acedemic sources
Ultimately doomed to fail as it fails to capitilise on each persons different points-of-view
\subsection{Previous Solutions}
There are a number of way these issues has been addressed in the past however each of them have weaknesses

 
 \subsection{Other tools}
 There are a
 Although their are a number of tools that can represent aspects of the source code in a diffrent manner they come with their own challenges.
 (CodeCity)
 There is a time and thought overhead to adjust to the new perspective that these tools bring. 
 Time must be spent learning how to use the new tool. 
 Often it only displays a subset of information about the code.
 Even UML is better used as an overview for Object Oriented Programs and when it comes to actually coding you have to revert to editing text for a particular programming language.
 
  Most of the current tools on the market are focused on forcing people to be on the same page. 
 One of the exceptions to this is GIT which because of its decentralised nature provides a way to explore different ways to approach a solution.
 Even GIT does not go far enough.
 as two segments of code although written differently can provide an equivilent set of functions
\subsection{Personal Intellectual Property}
In the software development career there is quite a high turnover of both permanent and contract staff. In most circumstances with each change of contract or job the contractor or employee has to relinquish ownership of everything they have written while in service of a company.  According to a recent article in Vanity Fair \cite{VanityFair} failure to follow these rules is dire. I realize that intellectual property (IP) is a complicated subject and that it will take more than a Masters Thesis to address.  It is my hope that this thesis will provoke a greater discussion on the subject.  The ability to have your own separate personalized refactored view of the code raises the question "Who owns that view".  Currently if someone  enters into a contract with a company normally the company takes ownership of all the code that they produce.  When they leave the company unless all their code is open source they cannot take any of it with them.  This in turn means that when joining a new company although a programmer may have knowledge about an area it takes longer to apply that knowledge as they need to start again from scratch.  When they leave a company and they have an individualized view of the code however highlights the interesting communication issue we have been talking about.  It is now uneconomic for the company to retain the individualized view as they already have a different copy that is more relevant and understandable to themselves. Bringing in a new developer and persuading them to understand the code from the leaving party's point of view is also pointless. The only real remaining concern for companies is how much of leaving parties view is their own innovation and how much of it contains innovation from the company or client that the company is writing applications for. As far as knowledge that the person possesses this has not been an issue for the most companies but they may be more sensitive about code. Although I cannot make any promises one of the things that I will be looking into is a way to elegantly unhook the view so that it only retains the changes and interpretations of the individual.      

I hope that this discussion will provide a step towards the point where individual developers can develop their own general purpose frameworks. This benefits both the individual programmer and the companies that they are involved with as they can more quickly become productive in their next contract.  It also encourages novel innovation in a way which open source cannot as it is harder to reap the benefits of your own open source projects.   

       
\subsection{Differences in created code}
When you assign two developers a project you often end up with two vastly different implementations.  
A possible reason for this would be that the requirements have not been made clear enough to obtain the correct implementation. This however suggests that there is only one possible solution and that one of the implementations better encapsulates the requirements.  
The reason also does not take into account what may learned about the problem during the act of programming  a solution.  While programming the solution it could be revealed that the requirements are incorrectly stated. 
Additionally there is normally a significant amount of leeway within the requirements which could make either implementation adequate for the task.
Judging by the regularity of differing implementations is spite of presenting the same requirements indicates that the notion of correct and precise requirements are myth.  

The other factor in implementing a set of requirements are the programmers or business analysts themselves.  
People tend to think differently and have their own ways of internally representing information.
This is an asset rather that a liability as it means that what one person overlooks due to their perspective may be considered by someone else.
The problem with this is when doing a software development project communicating a particular understanding is lossy and is never perfect.

What is required is a way of translating some of the information between the different understandings that represent the same functional outcome.  
---+++ Papers I am currently reading
---++++ Code Source Mining
---++++++ Article: FRUIt
 
Uses data mining techniques to produce views inside an eclipse plugin.  This was done to help developers cope with the overhead of understanding frameworks.

Possible followup

   * G. I. Webb and S. Zhang. Beyond association rules: Generalized rule discovery. http://www.csse.monash.edu.au/~webb/Files/WebbZhang03.pdf.

   * A. Michail. Data mining library reuse patterns using generalized association rules. In Proceedings of the International Conference on Software Engineering, pages 167–176. ACM Press, 2000.

   * Learning from examples to improve code completion systems http://dl.acm.org/citation.cfm?id=1595728
---++++++ Article: Mining Software Repositories with iSPAROL and a Software Evolution Ontology

http://dl.acm.org/citation.cfm?id=1268983.1269048

In this paper they present EvoOnt which is a common language useful for extracting informtion out of code repositories. As it is based on the existing Web Ontology Language (OWL) they believe that it is extendable.  They claim that it can be used to detect bad smells in Java code. Although this would be useful as a tool to view existing code it only appears capable of representing subsets of a central code repository. Thats said the underlying language which they are using deserves further study as it may be able to help two seperate views negotiate what is common between them. This would be a step towards discovering code equivlencies.

Possible followup
   * Using information fragments to answer the questions developers ask http://dl.acm.org/citation.cfm?id=1806828
   * Sample Spaces and Feature Models: There and Back Again http://ieeexplore.ieee.org/xpls/abs_all.jsp?arnumber=4626837&tag=1
   
---++++++ Article: TARE An Exchange Language for Mining Software Repositories
http://dl.acm.org/citation.cfm?id=1137983.1137990

Another exchange language useful for data mining. It differs in that it is not based on an existing language. 

Another language useful for data mining. It differs in that it is not based on an existing language. 
---++++ CSCW

---+++++ What is CSCW?
Computer supported cooperative work 

http://en.wikipedia.org/wiki/Computer-supported_cooperative_work

---+++++ Article: CSCW and Education

http://dl.acm.org/citation.cfm?id=2441955.2442035
---+++++ Article: Why CSCW needs Science Policy

http://dl.acm.org/citation.cfm?doid=2441776.2441902
---++++ Modeling and Graphical Code viewing

---++++++ Article: An EXtensible Framework for providing Dynamic Data Structure Visualisations

http://dl.acm.org/citation.cfm?id=1028174.971433
---+++++ Article: Constructing  Multi-View Editing Eviroments Using MViews

   * Developing multiple grapical front ends for programming
   * SNART

It focuses on making each subset view a part of a central whole. It uses a central database to hold information about program structure and semantics. What I am attempting to do with my concept of views is to treat each view as its individual whole with items deamed to be equivilent syncronsised with the views they are equivilent to.  There need to be some way of detecting these code equivlencies.

Futher articles about Mviews and other products that involve co-operating view can be found on John C Grundys home page

https://sites.google.com/site/johncgrundy/Home
---++++++ Article: Software Dev enviroments on the web

http://dl.acm.org/citation.cfm?id=2384592.2384603
---++++++ Article:Shrimp
---++++++ Article: Towards a Prctical Visual OO Programming environment
What parts of Java could be reperesented by a visual represatation alone?
Can all of the OO be represented by a visual design rather than by text
---++++ Program Slicing

http://pages.cs.wisc.edu/~reps/
http://en.wikipedia.org/wiki/Compare%2B%2B

http://discuss.fogcreek.com/joelonsoftware5/default.asp?cmd=show&ixPost=155585&ixReplies=18

http://www.drdobbs.com/tools/worlds-first-language-aware-source-code/240153121

http://stackoverflow.com/questions/77931/do-you-know-of-any-language-aware-diffing-tools

http://www.modelmakertools.com/structured-diff-viewer/index.html
---++++ Syntactically aware comparison tools

Beyond compare seems to use some of these features to compare similar files against each other (not sure how effectivly is does this however)
http://www.scootersoftware.com/moreinfo.php

Altova also has a tool however it is focused on being solely xml aware
http://www.altova.com/diffdog.html

With semantic merge the name says it all. Hopefully they live up to this reputation 
http://www.semanticmerge.com/
This also seems to be about semantic merge
http://rlbisbe.wordpress.com/2013/04/15/semantic-merge-as-the-default-merge-tool-with-git-on-windows/

I am not sure if this is a new one or just is a rehash of semantic merge, SemanticMerge is adverstised on the side bar however some of the converstaion seems to be aimed at the effectiveness of plain text based merging.
http://codicesoftware.blogspot.com/2013/04/put-your-hands-on-programming-language.html


blog on Semantic Conflict by Martin Fowler no less 
http://martinfowler.com/bliki/SemanticConflict.html

Git Diff implemantations (not semantic currently)
https://www.kernel.org/pub/software/scm/git/docs/git-diff.html
---++++  Templates and Macros
---++++++ Article: Behaviorial Similarity Matching using Concrete Source Code Templates in Logic Queries

http://dl.acm.org/citation.cfm?doid=1244381.1244398

This Paper is about identifing pattern with a particular code
---++++++ Article: Code Templete Inference Using Langugauge Models

http://dl.acm.org/citation.cfm?doid=1900008.1900143
---++++++ Article: Marco: safe, expressive macros for any language

http://dl.acm.org/citation.cfm?id=2367163.2367199

The reason why I was intersted in this paper is that one way to implement a seperate view would be to write programs that are responsible for assembling the program end product.  The reason I have gone off that idea is that this still requires a central point that contains the "truth" while the seperate views are considered as being simply small subsets of that "truth". I still admire the ability to be language agnostic however.
---++++++ Article: Towards Modular Code Generators Using Symmetric Language-Aware Aspects

http://dl.acm.org/citation.cfm?doid=2068776.2068782
---++++  Version Control
---+++++ Article: Modern Version Control

http://dl.acm.org/citation.cfm?id=2382456.2382510
---+++++ Article: Version Control in Crosscutting Framework-Based Development

http://portal.acm.org/citation.cfm?doid=1363686.1363862

This article highlights the some of the conditions where version control may not understand or cater for code structured in a particular manner. although they mention that this also could be an issue with Object Oriented Frameworks OOF they focus more on Aspect Oriented and crosscutting frameworks. They also have developed TOFRA to deal with changes in an Aspect. As a personalized view could be cross cutting this article could be of interest. The way in which aspect oriented programming links with vastly different parts of the same structure could be similar to how one personalized view would appear to another. The fact that a small configuration change within an aspect can affect vastly different parts of the application will cause similar complexities as changing items that might be related in one personal view but unrelated in another. Even worse would be changing items that appear unrelated in one view but are connected in another.
---+++++ Git web pages
Comparison between Git and Mecurial
http://alblue.bandlem.com/2011/03/mercurial-and-git-technical-comparison.html
---++++  View Mapping Language

---+++++ Article: Mappings the glue in an integrated system
   * View mapping language
   * VML
   * Code equivlency
---+++++ Article:User-centered design of a visual data mapping tool
 http://dl.acm.org/citation.cfm?id=2254556.2254646
---+++++ Article:Domain-specific visual languages for specifying and generating data mapping systems
http://www.sciencedirect.com/science/article/pii/S1045926X04000102#

This is also by John Grundy of Mviews Fame
---++++++ Article: Building Usage Contexts During Program Comprehension
---++++ Code Source Mining
---++++++ Article: FRUIt
 
Uses data mining techniques to produce views inside an eclipse plugin.  This was done to help developers cope with the overhead of understanding frameworks.

Possible followup

   * G. I. Webb and S. Zhang. Beyond association rules: Generalized rule discovery. http://www.csse.monash.edu.au/~webb/Files/WebbZhang03.pdf.

   * A. Michail. Data mining library reuse patterns using generalized association rules. In Proceedings of the International Conference on Software Engineering, pages 167–176. ACM Press, 2000.

   * Learning from examples to improve code completion systems http://dl.acm.org/citation.cfm?id=1595728
---++++++ Article: Mining Software Repositories with iSPAROL and a Software Evolution Ontology

http://dl.acm.org/citation.cfm?id=1268983.1269048

In this paper they present EvoOnt which is a common language useful for extracting informtion out of code repositories. As it is based on the existing Web Ontology Language (OWL) they believe that it is extendable.  They claim that it can be used to detect bad smells in Java code. Although this would be useful as a tool to view existing code it only appears capable of representing subsets of a central code repository. Thats said the underlying language which they are using deserves further study as it may be able to help two seperate views negotiate what is common between them. This would be a step towards discovering code equivlencies.

Possible followup
   * Using information fragments to answer the questions developers ask http://dl.acm.org/citation.cfm?id=1806828
   * Sample Spaces and Feature Models: There and Back Again http://ieeexplore.ieee.org/xpls/abs_all.jsp?arnumber=4626837&tag=1
   
---++++++ Article: TARE An Exchange Language for Mining Software Repositories
http://dl.acm.org/citation.cfm?id=1137983.1137990

Another exchange language useful for data mining. It differs in that it is not based on an existing language. 

Another language useful for data mining. It differs in that it is not based on an existing language. 
---++++ CSCW

---+++++ What is CSCW?
Computer supported cooperative work 

http://en.wikipedia.org/wiki/Computer-supported_cooperative_work

---+++++ Article: CSCW and Education

http://dl.acm.org/citation.cfm?id=2441955.2442035
---+++++ Article: Why CSCW needs Science Policy

http://dl.acm.org/citation.cfm?doid=2441776.2441902
---++++ Modeling and Graphical Code viewing

---++++++ Article: An EXtensible Framework for providing Dynamic Data Structure Visualisations

http://dl.acm.org/citation.cfm?id=1028174.971433
---+++++ Article: Constructing  Multi-View Editing Eviroments Using MViews

   * Developing multiple grapical front ends for programming
   * SNART

It focuses on making each subset view a part of a central whole. It uses a central database to hold information about program structure and semantics. What I am attempting to do with my concept of views is to treat each view as its individual whole with items deamed to be equivilent syncronsised with the views they are equivilent to.  There need to be some way of detecting these code equivlencies.

Futher articles about Mviews and other products that involve co-operating view can be found on John C Grundys home page

https://sites.google.com/site/johncgrundy/Home
---++++++ Article: Software Dev enviroments on the web

http://dl.acm.org/citation.cfm?id=2384592.2384603
---++++++ Article:Shrimp
---++++++ Article: Towards a Prctical Visual OO Programming environment
What parts of Java could be reperesented by a visual represatation alone?
Can all of the OO be represented by a visual design rather than by text
---++++ Program Slicing

http://pages.cs.wisc.edu/~reps/
http://en.wikipedia.org/wiki/Compare%2B%2B

http://discuss.fogcreek.com/joelonsoftware5/default.asp?cmd=show&ixPost=155585&ixReplies=18

http://www.drdobbs.com/tools/worlds-first-language-aware-source-code/240153121

http://stackoverflow.com/questions/77931/do-you-know-of-any-language-aware-diffing-tools

http://www.modelmakertools.com/structured-diff-viewer/index.html
---++++ Syntactically aware comparison tools

Beyond compare seems to use some of these features to compare similar files against each other (not sure how effectivly is does this however)
http://www.scootersoftware.com/moreinfo.php

Altova also has a tool however it is focused on being solely xml aware
http://www.altova.com/diffdog.html

With semantic merge the name says it all. Hopefully they live up to this reputation 
http://www.semanticmerge.com/
This also seems to be about semantic merge
http://rlbisbe.wordpress.com/2013/04/15/semantic-merge-as-the-default-merge-tool-with-git-on-windows/

I am not sure if this is a new one or just is a rehash of semantic merge, SemanticMerge is adverstised on the side bar however some of the converstaion seems to be aimed at the effectiveness of plain text based merging.
http://codicesoftware.blogspot.com/2013/04/put-your-hands-on-programming-language.html


blog on Semantic Conflict by Martin Fowler no less 
http://martinfowler.com/bliki/SemanticConflict.html

Git Diff implemantations (not semantic currently)
https://www.kernel.org/pub/software/scm/git/docs/git-diff.html
---++++  Templates and Macros
---++++++ Article: Behaviorial Similarity Matching using Concrete Source Code Templates in Logic Queries

http://dl.acm.org/citation.cfm?doid=1244381.1244398

This Paper is about identifing pattern with a particular code
---++++++ Article: Code Templete Inference Using Langugauge Models

http://dl.acm.org/citation.cfm?doid=1900008.1900143
---++++++ Article: Marco: safe, expressive macros for any language

http://dl.acm.org/citation.cfm?id=2367163.2367199

The reason why I was intersted in this paper is that one way to implement a seperate view would be to write programs that are responsible for assembling the program end product.  The reason I have gone off that idea is that this still requires a central point that contains the "truth" while the seperate views are considered as being simply small subsets of that "truth". I still admire the ability to be language agnostic however.
---++++++ Article: Towards Modular Code Generators Using Symmetric Language-Aware Aspects

http://dl.acm.org/citation.cfm?doid=2068776.2068782
---++++  Version Control
---+++++ Article: Modern Version Control

http://dl.acm.org/citation.cfm?id=2382456.2382510
---+++++ Article: Version Control in Crosscutting Framework-Based Development

http://portal.acm.org/citation.cfm?doid=1363686.1363862

This article highlights the some of the conditions where version control may not understand or cater for code structured in a particular manner. although they mention that this also could be an issue with Object Oriented Frameworks OOF they focus more on Aspect Oriented and crosscutting frameworks. They also have developed TOFRA to deal with changes in an Aspect. As a personalized view could be cross cutting this article could be of interest. The way in which aspect oriented programming links with vastly different parts of the same structure could be similar to how one personalized view would appear to another. The fact that a small configuration change within an aspect can affect vastly different parts of the application will cause similar complexities as changing items that might be related in one personal view but unrelated in another. Even worse would be changing items that appear unrelated in one view but are connected in another.
---+++++ Git web pages
Comparison between Git and Mecurial
http://alblue.bandlem.com/2011/03/mercurial-and-git-technical-comparison.html
---++++  View Mapping Language

---+++++ Article: Mappings the glue in an integrated system
   * View mapping language
   * VML
   * Code equivlency
---+++++ Article:User-centered design of a visual data mapping tool
 http://dl.acm.org/citation.cfm?id=2254556.2254646
---+++++ Article:Domain-specific visual languages for specifying and generating data mapping systems
http://www.sciencedirect.com/science/article/pii/S1045926X04000102#

This is also by John Grundy of Mviews Fame
---++++++ Article: Building Usage Contexts During Program Comprehension
Being able to provide manual instructions and hints about how the source control should treat set blocks of code needs investigation. If a record is kept of conflicting items that are marked as being functionally equivalent they do not need to be included in a merge. The simplest of these would be comments that have been noted as being functionally irrelevant. If there is a conflict with the comment in one branch with a line of code in another branch, there could be an indication about which should be preferred. Another reason to mark something as functionally irrelevant might be if there is throw-away code that you do not want propagated over your whole version control system.
