---- MODULE OneHundred ----
EXTENDS Integers

VARIABLES n, sum

Init == sum = 0 /\ n = 1..7

SumNeq100 ==
    \/ n # {}
    \/  (sum # 100 /\ n = {})

Next1 == \E v \in n : 
        /\ n' = n \ {v}
        /\ sum' = sum + v
        
Next10 == \E v \in n : 
        /\ n' = n \ {v}
        /\ sum' = sum + 10 * v
        
Next == Next1 \/ Next10
====