---- MODULE OneHundred ----
EXTENDS Integers

VARIABLES n, sum, res

Init == sum = 0 /\ n = 1..7 /\ res = {}

SumNeq100 ==
    \/ n # {}
    \/  (sum # 100 /\ n = {})

Next1 == \E v \in n : 
        /\ n' = n \ {v}
        /\ sum' = sum + v
        /\ res' = res \union {v}
        
Next2 == \E v1, v2 \in n : 
        /\ n' = n \ {v1, v2}
        /\ sum' = sum + v1 * 10 + v2
        /\ res' = res \union {v1*10+v2}
        
Next == Next1 \/ Next2
====