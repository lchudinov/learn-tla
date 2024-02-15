---- MODULE OneHundred2 ----
EXTENDS Integers, Sequences, FiniteSets

VARIABLES n, sum, res

Init == sum = 0 /\ n = <<1,2,3,4,5,6,7>> /\ res = <<>>

SumNeq100 ==
    \/ n # <<>>
    \/  (sum # 100 /\ n = <<>>)

Next1 == Len(n) > 0 
        /\ sum' = sum + Head(n)
        /\ n' = Tail(n)
        /\ res' = Append(res, Head(n))
        
Next2 == Len(n) > 1
        /\ sum' = sum + Head(n) * 10 + Head(Tail(n))
        /\ n' = Tail(Tail(n))
        /\ res' = Append(res, Head(n) * 10 + Head(Tail(n)))
        
Next == Next1 \/ Next2
====