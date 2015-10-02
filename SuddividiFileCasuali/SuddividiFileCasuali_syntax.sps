* Encoding: windows-1252.

COMPUTE draw=UNIFORM(1).
SORT CASES BY draw.
DO IF mod($CASENUM,2)=0.
XSAVE OUTFILE="C:\Users\operatore\Documents\syntax dialogs part "+
    "1\SPSS-syntax-dialogs\SuddividiFileCasuali\file1.sav" .
ELSE.
XSAVE OUTFILE="C:\Users\operatore\Documents\syntax dialogs part "+
    "1\SPSS-syntax-dialogs\SuddividiFileCasuali\file2.sav" .
END IF.
EXECUTE.
