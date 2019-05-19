defmodule Longestconsec do

  def longest_consec([], _), do: ""
  def longest_consec(_, k) when k <= 0, do: ""
  def longest_consec(strarr, k) when k > length(strarr), do: ""

  def longest_consec(strarr, k) do
    strarr
    |> Enum.chunk_every(k, 1, :discard)
    |> Enum.map(&Enum.join/1)
    |> Enum.max_by(fn x -> String.length(x) end)
  end

end
