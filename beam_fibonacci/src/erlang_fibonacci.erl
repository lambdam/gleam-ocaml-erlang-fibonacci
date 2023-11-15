-module(erlang_fibonacci).

-export([print_fib/1]).

fib(0) -> 0;
fib(1) -> 1;
fib(Target) ->
    FibAcc =
        fun FibAccClos(N, FMinus1, FMinus2) when N =:= Target ->
                FMinus1 + FMinus2;
            FibAccClos(N, FMinus1, FMinus2) ->
                FibAccClos(N + 1, FMinus1 + FMinus2, FMinus1)
        end,
    FibAcc(2, 1, 0).

print_fib(N) -> io:fwrite("fib(~B) = ~B~n", [N, fib(N)]).
