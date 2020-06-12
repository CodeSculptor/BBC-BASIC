0*|(c) Steve Jones '90
10CLS:INPUT"Page of program to be recovered :&"A$:P%=EVAL("&"+A$):A%=P%:PRINT'"Please wait":IFP%?1=&FF P%?1=0
20IF?A%<>13 THEN50
30IFA%?1=&FF THEN100
40IFA%?3>0 A%=A%+A%?3:GOTO20
50B%=A%+4
60IFB%-A%>255 THEN90
70IF?B%<>13 B%=B%+1:GOTO60
80IFB%?1=&FF OR?(B%+B%?3)=13 A%?3=B%-A%:?A%=13:A%=B%:GOTO20
90!A%=&FF0D
100PRINT'"Recovered":PAGE=P%
