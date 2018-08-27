defmodule Pentabonacci do
  import Integer, only: [is_odd: 1]

  def count_odd_pentaFib(n) do
    sequence(n)
    |> Stream.dedup
    |> Enum.reduce(0, fn(n, acc) -> Integer.is_odd(n) && acc + 1 || acc end)
  end

  def sequence(n) do
    {0, 1, 1, 2, 4}
    |> Stream.unfold(fn({a, b, c, d, e}) -> {a, {b, c, d, e, a + b + c + d + e}} end)
    |> Enum.take(n)
  end
end
