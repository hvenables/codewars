defmodule Kata do
  def high(str) do
    str
    |> String.split(" ")
    |> Enum.max_by(&score/1)
  end

  def score(str) do
    str
    |> String.to_charlist
    |> Enum.map(&(&1-?a+1))
    |> Enum.sum
  end
end
