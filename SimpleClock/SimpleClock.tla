---- MODULE SimpleClock ----
EXTENDS Integers
VARIABLE hr

HCInit == hr \in 1..12

HCNext == hr' = IF hr # 12 THEN hr + 1 ELSE 1

HC == HCInit /\ [][HCNext]_hr
------------------------------------
THEOREM HC => []HCInit

====