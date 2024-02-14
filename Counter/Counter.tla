---- MODULE Counter ----
EXTENDS Integers

VARIABLE counter

TypeOK == /\ counter > 0
         /\ num \in 1..7

Init == 
    counter = 0

Next == 
    /\ sum = 0
    /\ sum' =  


====