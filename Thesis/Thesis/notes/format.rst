Structure for thesis
--------------------

VICTORIA UNIVERSITY OF WELLINGTON

Te Whare Wananga o te ¯ Upoko o te Ika a M ¯ aui ¯

School of Engineering and Computer Science

Te Kura Matai P ¯ ukaha, P ¯ urorohiko ¯

PO Box 600

Wellington

New Zealand

Chat by Searching

Alexandre Sawczuk da Silva


Supervisors: Xiaoying Gao, Peter Andreae

October 17, 2013

Submitted in partial fulﬁlment of the requirements for

Bachelor of Engineering — Software Engineering.



Chatbots, which are computer programs that have conversations with users,

are a well-established technology. However, the conversational ability of the typ-
ical chatbot is greatly restricted, since it does not have access to external sources

of information. The objective of this project was to investigate how the per-
formance of a chatbot could be improved by connecting it with a knowledge

source that could be used during its interactions with users. A new chatbot, Wal-
lace, was created by extending Alice to incorporate knowledge from Wikipedia

into its conversations. Mechanisms were designed and developed to retrieve

Wikipedia pages, parse them, and select suitable sentences for the conversation.

A user evaluation was conducted on the prototype, which showed that Wallace

was generally more effective at providing factual answers to questions denoting

an informational need than Alice. Participants also expressed that Wallace was

more speciﬁc and more entertaining than Alice. This project identiﬁed several

directions for future development, especially involving human-computer inter-
action and artiﬁcial intelligence.

Acknowledgements

Contents

List of Figures


1.1 Project Objectives . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 1


2.1 History of Chatbots . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 3

2.2 Educational Chatbots . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 4

2.3 Chatbots for Bulletin Boards . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 4

2.4 Chatbots with Emotions . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 5

2.5 Commercial Chatbots . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 5

2.6 Proﬁle-building Chatbots . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 5

2.7 Chatbots with Learning Capabilities . . . . . . . . . . . . . . . . . . . . . . . . 6


General overview

understanding of definitions

Benefits

How to do it / model it tjink about it

types of

tools that could help

summary

3 Development of Chatbot Functionality 7

3.1 Requirements . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 7

3.2 System Overview . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 8

3.2.1 Chosen Technologies . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 9

3.2.2 The Existing Alice Framework . . . . . . . . . . . . . . . . . . . . . . . 9

3.2.3 System Architecture . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 10

3.2.4 Enhancing the Model . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 11

3.3 Integrating Search to Wallace . . . . . . . . . . . . . . . . . . . . . . . . . . . . 12

3.3.1 Triggering the Search Behaviour . . . . . . . . . . . . . . . . . . . . . . 12

3.3.2 Parsing a Wikipedia Page . . . . . . . . . . . . . . . . . . . . . . . . . . 13

3.3.3 Simple Sentence Selection Approach . . . . . . . . . . . . . . . . . . . . 14

3.3.4 Sophisticated Sentence Selection Approach . . . . . . . . . . . . . . . . 14

3.3.5 Handling Follow-up Interaction . . . . . . . . . . . . . . . . . . . . . . 15

3.4 Summary . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 17

Design and implemenattion

libraries used

each of the compoments

difficulties and problems

4 Development of the User Interface 19

4.1 User Interface Requirements . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 19

4.2 User Interface Design . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 20

4.3 Initial SWT Implementation . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 21

4.4 Final JavaFX Implementation . . . . . . . . . . . . . . . . . . . . . . . . . . . . 21


How it works in action

5 Formative System Evaluation 23

5.1 Evaluation Design and Execution . . . . . . . . . . . . . . . . . . . . . . . . . . 23

5.1.1 Conversational Tasks . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 24

5.1.2 System Performance Questions . . . . . . . . . . . . . . . . . . . . . . . 24

5.1.3 Reviewing the Log . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 24

5.2 Analysis of Results . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 24

5.2.1 Quantitative Analysis . . . . . . . . . . . . . . . . . . . . . . . . . . . . 25

5.2.2 Qualitative Analysis . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 26


6 Conclusions and Future Work 31


6.1 Recommendations for Future Work . . . . . . . . . . . . . . . . . . . . . . . . . 32

