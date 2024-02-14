---- MODULE SimpleClock ----
EXTENDS Integers
VARIABLE hr, mm

HCInit == 
    /\ hr \in 1..12
    /\ mm \in 1..60

ONLYMM == /\ mm /= 60
         /\ mm' = mm + 1
         /\ UNCHANGED hr
         
ONLYHR == /\ mm = 60 
         /\ mm' = 1
         /\ hr' = IF hr # 12 THEN hr + 1 ELSE 1

HCNext == ONLYHR \/ ONLYMM

HC == HCInit /\ [][HCNext]_<<hr, mm>>
------------------------------------
THEOREM HC => []HCInit

====