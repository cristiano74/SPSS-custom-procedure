* Encoding: windows-1252.
DESCRIPTIVES VARIABLES=salary
  /SAVE.
do if 
RANGE(Zsalary,-1,1).
xsave outfile ="C:\Users\operatore\Documents\syntax dialogs part "+
    "1\SPSS-syntax-dialogs\EscludiOutliers\CasiInclusi.sav".
end if.
DESCRIPTIVES VARIABLES=salary zsalary
 /STATISTICS=MIN MAX.
EXECUTE.
