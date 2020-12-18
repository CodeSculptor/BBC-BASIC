# BBC-BASIC
I spent my teens being a nerdy loner, coding on a BBC Micro. I'll add the results of my mis-spent youth here, 
as and when I can retrieve the code from my ancient retro hardware - another project on its own.

Eureka.bas
Eureka was a kids TV show on BBC in 1982 starring a young Sylvester McCoy. The theme music, as far as I can tell, was in 9/4 time, 
and this was my go at reproducing it for the Beeb.

Emulators:
BeebEm - Works well!
BBC BASIC for Windows - Gets the envelopes wrong. Shame, given the author's long history with the Beeb.
B-em - Attempts a bizarre remix, but I prefer the original.

I've tried to find any kind of copyright reference, but can't, so I assume it's another classic from the BBC Radiophonic Workshop.

NOTE: This is NOT the game of the same name, available elsewhere.

Sprache.bas
This uses Superior Software's Speech!
It's an attempt to force the speech emulator to pronounce German sentences correctly by converting German vowels, constantants, dipthongs and numbers into their British English equivalents.
It's by no means complete - for one thing it only copes with numbers up to 20 and doesn't recognise umlauts, but it's surprisingly effective for simple phrases.

Expand.bas
As a young hacker, most of my code looked like a cat had a party on the keyboard. It was a point of pride for me to cram every available character of code that the OS would allow into a single line, at the expense of any and all code readability.
My teachers, on the other hand, resented how much the headache pills were costing, and would only accept neat, readable code.
What to do?
So, I wrote a code refactoring program to facilitate my filthy coding habits. It takes a jumbled mess of spaghetti code and converts it to one instruction per line with orderly line numbers.

To use, first load your source program, then load Xpander into a different page:

1.LOAD "your_program"
1.
PRINT ~PAGE: REM Make a note of the current page.
2.
PAGE=&1D00: REM Either set the page to a known free location below HIMEM
PAGE=TOP+&400: REM or set it above the top of the refactoring code.
3.
CHAIN "xpand": REM Load the expander into the new location in memory.
4.
Enter the PAGE value from (1)

This worked on the Beeb, up to a point, as far as I can remember, but 35 years later it's still a work in progress. I've tested it in BeebEm with some success. I hope it's at least interesting from an academic or intellectual perspective. To my 14 year old mind, it was just a challenge that was more interesting than homework.

Toolkit.bas
A set of utils to work with ROMs, disassemble code, hex dumps, and other fun stuff. Honestly, I don't even remember writing this, and it's possible I didn't. I wrote a lot of stuff when I was young, and now I'm old and forgetful.

LineLOK.bas
UnLOK.bas
LineLOK provides software protection by disabling editing, including deleting/overwriting lines and renumbering. UnLOK reverses the process. To run, follow the instructions for Expand.bas for loading the tools into a different page. 

Recover.bas
This recovers a program in memory. From what? Haven't a clue, but I'm sure it was useful at the time.
