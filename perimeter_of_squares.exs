defmodule Perim do
  def perimeter(n) do
    {1,1}
    |> Stream.unfold(fn {a,b} -> { a, {b, a + b}} end)
    |> Enum.take(n + 1)
    |> Enum.sum
    |> Kernel.*(4)
  end
end
