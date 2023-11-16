# Exploring named anonymous functions in Gleam

While exploring the Gleam programming language, I tried to implement a tail
recursive version of a function that gives the nth number of the Fibonacci
sequence.

I tried to implement it in a similar way to this
[OCaml version](ocaml_fibonacci/bin/main.ml) of the function.

I figured out that seemed to be no obvious way to have recursion in an anonymous
function in Gleam, while it is possible in
[Erlang since version 17](https://learnyousomeerlang.com/higher-order-functions#highlighter_779689).
Here is the [Erlang version of the Fibonacci function](beam_fibonacci/src/erlang_fibonacci.erl).

We can [implement it with another top level function](beam_fibonacci/src/gleam_fibonacci.gleam)
that taked one more argument since we cannot close over it.

Here are some exporatory syntaxes for what could be
[named anonymous functions in Gleam](exploration/exploration.gleam).