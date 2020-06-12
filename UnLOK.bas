0*|(c) Steve Jones '90
10CLS:INPUT"Page of program to be unLOKed :&"A$:P%=EVAL("&"+A$):A%=P%+3:PRINT'"Please wait"
20REPEATC%=0:REPEATC%=C%+1:UNTIL?(A%+C%-3)=13:?A%=C%:A%=A%+C%:UNTILA%?-2=255:PAGE=P%
