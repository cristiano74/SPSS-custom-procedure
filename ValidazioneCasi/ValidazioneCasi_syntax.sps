* Encoding: windows-1252.

COMPUTE nonConformeCat1=0.
COMPUTE nonConformeCat2=0.
COMPUTE nonConformeCont1=0.
COMPUTE nonConformeCont2=0.
COMPUTE nonConformeCat1=~ANY(var1,1,2,3).
* COMPUTE nonConformeCat2=~ANY(varname,1,2,3).
COMPUTE nonConformeCont1=~RANGE(var3,10,15).
* COMPUTE nonConformeCont2=~RANGE(varname,10,15).
EXECUTE.
FILTER OFF.
USE ALL.
DO IF
SUM(nonConformeCat1 TO nonConformeCont2)>0.
xsave OUTFILE = "C:\Users\operatore\Documents\syntax dialogs part "+
    "1\SPSS-syntax-dialogs\ValidazioneCasi\CasiNonValidi.sav".
end if.
EXE.
DELETE VARIABLES nonConformeCat1 TO nonConformeCont2.

