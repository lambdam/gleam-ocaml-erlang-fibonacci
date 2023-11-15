let fib target =
  let rec fib' n f_minus_1 f_minus_2 =
    let sum = f_minus_1 + f_minus_2 in
    if n = target
    then sum
    else fib' (n + 1) sum f_minus_1
  in
  match target with
  | 0 -> 0
  | 1 -> 1
  | _ -> fib' 2 1 0

let () =
  let n = 40 in
  let r = fib n in
  Printf.printf "fib(%d) = %d\n%!" n r
