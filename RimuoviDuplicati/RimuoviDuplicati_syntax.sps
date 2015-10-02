* Encoding: windows-1252.

DATASET NAME DataSetOriginale WINDOW=FRONT.
SORT CASES v1 v2 v3.
MATCH FILES FILE=* /BY v1 v2 v3 /FIRST= first.
temporary.
Select IF first. 
xsave outfile ="C:\Users\operatore\Documents\syntax dialogs part "+
    "1\SPSS-syntax-dialogs\Rimuoviduplicati\casi.sav".
Execute.
DELETE VARIABLES first.
