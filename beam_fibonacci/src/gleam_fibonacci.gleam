import gleam/int
import gleam/io

fn fib_acc(target, n, f_minus_1, f_minus_2) {
  let sum = f_minus_1 + f_minus_2
  case n {
    _ if n == target -> sum
    _ -> fib_acc(target, n + 1, sum, f_minus_1)
  }
}

fn fib(n) {
  case n {
    0 -> 0
    1 -> 1
    _ -> fib_acc(n, 2, 1, 0)
  }
}

pub fn print_fib(n) {
  let r = fib(n)
  { "fib(" <> int.to_string(n) <> ") = " <> int.to_string(r) }
  |> io.println
}
