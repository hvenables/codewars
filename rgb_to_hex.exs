defmodule Kata do
  def rgb(r, g, b) do
    [r, g, b]
    |> Enum.map(&convert_to_rgb/1)
    |> Enum.join
  end

  defp convert_to_rgb(n) do
    n
    |> clamp
    |> Integer.to_string(16)
    |> String.pad_leading(2, "0")
  end

  defp clamp(n) when n > 255, do: 255
  defp clamp(n) when n < 0, do: 0
  defp clamp(n), do: n
end
