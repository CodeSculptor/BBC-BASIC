0*|(c) Steve Jones '90
10CLS
11INPUT"Page of program to be LINELOKed :&" PG$
12PAGE=EVAL("&"+PG$)
13A%=PAGE+3
14PRINT'"Please wait"
20REPEATC%=0:REPEATB%=?(A%+C%):C%=B%+C%:UNTILC%>&FFOR?(A%-B%+C%-2)=&FF:D%=?A%:?A%=C%-B%:A%=A%+D%:UNTILA%?-2=&FF:PAGE=PAGE
