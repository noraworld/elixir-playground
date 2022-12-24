fizzword = fn
  (0, 0, _) -> "FizzBuzz"
  (0, _, _) -> "Fizz"
  (_, 0, _) -> "Buzz"
  (_, _, n) -> to_string(n)
end

fizzbuzz = fn n ->
  fizzword.(rem(n, 3), rem(n, 5), n)
end

1..100 |> Enum.map(fizzbuzz) |> IO.inspect
