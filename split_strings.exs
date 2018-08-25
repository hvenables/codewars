defmodule SplitStrings do
  def solution(str) do
    string = Regex.scan(~r/.{2}/, str)
             |> List.flatten

    if rem(String.length(str), 2) == 1 do
      string ++ ["#{String.at(str, -1)}_"]
    else
      string
    end
  end
end
