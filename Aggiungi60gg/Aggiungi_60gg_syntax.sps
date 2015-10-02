* Encoding: windows-1252.


COMPUTE beg60 = begdate + TIME.DAYS(60).
COMPUTE mth = XDATE.MONTH(beg60) + 1.
COMPUTE yr = XDATE.YEAR(beg60).
COMPUTE enddate = DATE.DMY(0,mth,yr).

FORMATS begdate beg60 enddate (DATE11).
VARIABLE WIDTH begdate beg60 enddate(11).
EXECUTE.
