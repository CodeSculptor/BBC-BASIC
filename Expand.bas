10MODE7:DIMMV%(255):IG%=0:QT%=0:N%=1
20INPUT"Source program address :&"AD$:CLS:PRINT'" Checking";
30PAD%=EVAL("&"+AD$):PG%=PAD%:AD%=PG%+3:
40REPEAT
50FORLP%=AD%+1TOAD%+?AD%-4
60IFINSTR("Üçô",CHR$?LP%)>0 IG%=-1
70IF?LP%=42 IFLP%?-1=13ORLP%?-4=13 IG%=-1
80IF?LP%=&8D LP%=LP%+4
90IF?LP%=34 QT%=NOTQT%
100IF?LP%=58 ANDNOTIG% ANDNOTQT% ANDLP%?1<>58 MV%(N%)=LP%:?LP%=13:N%=N%+1:VDU46
110NEXT
120AD%=AD%+?AD%:IG%=0:QT%=0
130IFAD%?-3<>13 PRINT''"Bad program at &";~PAD%:END
140UNTILAD%?-2=&FF
150IFN%=1 PRINT". Can't expand.":PAGE=PAD%:END
160MV%(N%)=AD%-1
170PRINTCHR$30'"Expanding";
180FORLP%=N%TO2STEP-1:VDU58
190FORTR%=MV%(LP%)TOMV%(LP%-1)STEP-1:?((LP%-1)*3+TR%)=?TR%:NEXT
200!(3*(LP%-1)+TR%-2)=&D:NEXT
210PRINT''"Renumbering :";
220REPEATCT%=PG%?1*256+PG%?2
230REPEATLG%=0:PG%=PG%+3:REPEAT:PG%=PG%+1:LG%=LG%+1:UNTIL?PG%=13
240PG%?-LG%=LG%+3:PRINTTAB(13,VPOS);CT%
250IF!PG%=&D CT%=CT%+1:PG%?1=CT%DIV256:PG%?2=CT%MOD256
260UNTIL!PG%<>&D ORPG%?1=&FF
270UNTILPG%?1=&FF:PRINT:PAGE=PAD%:END
280FORA%=&4000TO&7C00:PRINTTAB(0);~A%;" ";~?A%;" ";:VDU?A%*-(?A%>31AND?A%<127):NEXT:END
290FORA%=0TOTOP-PAGESTEP4:A%!&4000=A%!&E00:NEXT:END
