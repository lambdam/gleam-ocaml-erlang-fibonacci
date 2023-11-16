fn fib_v1(target) {
  fn fib_acc(n, f_minus_1, f_minus_2) {
    let sum = f_minus_1 + f_minus_2
    case n {
      _ if n == target -> sum
      _ -> fib_acc(target, n + 1, sum, f_minus_1)
    }
  }
  case n {
    0 -> 0
    1 -> 1
    _ -> fib_acc(2, 1, 0)
  }
}

fn fib_v2(target) {
  let fib_acc = fn fib_acc_clsr(n, f_minus_1, f_minus_2) {
    let sum = f_minus_1 + f_minus_2
    case n {
      _ if n == target -> sum
      _ -> fib_acc_clsr(target, n + 1, sum, f_minus_1)
    }
  }
  case n {
    0 -> 0
    1 -> 1
    _ -> fib_acc(2, 1, 0)
  }
}