0x06. Regular Expression
Overview
This project focuses on utilizing regular expressions in Ruby, specifically using the Oniguruma library. Regular expressions are powerful tools for pattern matching and string manipulation. The tasks involve creating Ruby scripts that apply regular expressions to match specific patterns.

Tasks
Task 0: Simply matching School
Create a Ruby script that accepts one argument and passes it to a regular expression matching method. The regular expression should match the string "School."

Example:
sylvain@ubuntu$ ./0-simply_match_school.rb School | cat -e
School$
sylvain@ubuntu$ ./0-simply_match_school.rb "Best School" | cat -e
School$
sylvain@ubuntu$ ./0-simply_match_school.rb "School Best School" | cat -e
SchoolSchool$
sylvain@ubuntu$ ./0-simply_match_school.rb "Grace Hopper" | cat -e
$

Task 1-4: Repetition Tokens
Create Ruby scripts for Tasks 1 to 4 that match specific repetition patterns using regular expressions.

Task 5: Not quite HBTN yet
Create a Ruby script that accepts one argument and passes it to a regular expression matching method. The regular expression should match a string that starts with 'h', ends with 'n,' and can have any single character in between.

Example:
sylvain@ubuntu$ ./5-beginning_and_end.rb 'hn' | cat -e
$
sylvain@ubuntu$ ./5-beginning_and_end.rb 'hbn' | cat -e
hbn$
sylvain@ubuntu$ ./5-beginning_and_end.rb 'hbtn' | cat -e
$
sylvain@ubuntu$ ./5-beginning_and_end.rb 'h8n' | cat -e
h8n$
sylvain@ubuntu$

Task 6: Call me maybe
Create a Ruby script that accepts one argument and passes it to a regular expression matching method. The regular expression should match a 10-digit phone number.

Example:
sylvain@ubuntu$ ./6-phone_number.rb 4155049898 | cat -e
4155049898$
sylvain@ubuntu$ ./6-phone_number.rb " 4155049898" | cat -e
$
sylvain@ubuntu$ ./6-phone_number.rb "415 504 9898" | cat -e
$
sylvain@ubuntu$ ./6-phone_number.rb "415-504-9898" | cat -e
$
sylvain@ubuntu$

Task 7: OMG WHY ARE YOU SHOUTING?
Create a Ruby script that accepts one argument and passes it to a regular expression matching method. The regular expression should match only capital letters.

Example:
sylvain@ubuntu$ ./7-OMG_WHY_ARE_YOU_SHOUTING.rb "I realLy hOpe VancouvEr posseSs Yummy Soft vAnilla Dupper Mint Ice Nutella cream" | cat -e
ILOVESYSADMIN$
sylvain@ubuntu$ ./7-OMG_WHY_ARE_YOU_SHOUTING.rb "WHAT do you SAY?" | cat -e
WHATSAY$
sylvain@ubuntu$ ./7-OMG_WHY_ARE_YOU_SHOUTING.rb "cannot read you" | cat -e
$
sylvain@ubuntu$

Repository Structure
alx-system_engineering-devops/
0x06-regular_expressions/
0-simply_match_school.rb
1-repetition_token_0.rb
2-repetition_token_1.rb
3-repetition_token_2.rb
4-repetition_token_3.rb
5-beginning_and_end.rb
6-phone_number.rb
7-OMG_WHY_ARE_YOU_SHOUTING.rb
README.md
How to Run
Make sure all Ruby scripts are executable (chmod +x script_name) before running them. Execute each script by providing the required argument.

8. Textme

This task involves creating a Ruby script (100-textme.rb) to extract and display specific information from log entries related to TextMe app text messages transactions.
The script should output: [SENDER],[RECEIVER],[FLAGS]
The sender's phone number or name (including the country code if present)
The receiver's phone number or name (including the country code if present)
The flags that were used

Example
$ ./100-textme.rb 'Feb 1 11:00:00 ip-10-0-0-11 mdr: 2016-02-01 11:00:00 Receive SMS [SMSC:SYBASE1] [SVC:] [ACT:] [BINF:] [FID:] [from:Google] [to:+16474951758] [flags:-1:0:-1:0:-1] [msg:127:This planet has - or rather had - a problem, which was this: most of the people on it were unhappy for pretty much of the time.] [udh:0:]'
Google,+16474951758,-1:0:-1:0:-1

