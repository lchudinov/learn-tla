---- MODULE Remove ----
EXTENDS Integers, Sequences

Remove(i, seq) == [j \in 1..(Len(seq)-1) |-> IF i < j THEN seq[j] ELSE seq[j+1]]

====