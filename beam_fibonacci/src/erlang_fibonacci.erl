-module(erlang_fibonacci).

-export([print_fib/1]).

fib(0) -> 0;
fib(1) -> 1;
fib(Target) ->
    FibAcc =
        fun FibAccClos(N, NMinus1, NMinus2) when N =:= Target ->
                NMinus1 + NMinus2;
            FibAccClos(N, NMinus1, NMinus2) ->
                FibAccClos(N + 1, NMinus1 + NMinus2, NMinus1)
        end,
    FibAcc(2, 1, 0).

print_fib(N) -> io:fwrite("fib(~B) = ~B~n", [N, fib(N)]).
