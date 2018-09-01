defmodule Whicharein do

  def in_array(array1, array2) do
    array1
    |> Enum.filter(fn word -> word_in_array(array2, word) end)
    |> Enum.sort
  end

  def word_in_array(array, word) do
    Enum.any?(array, fn second_word -> Regex.match?(~r/#{word}/, second_word) end)
  end

end
