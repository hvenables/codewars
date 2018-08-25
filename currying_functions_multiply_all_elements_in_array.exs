defmodule Multiply_all do
  def solution(list) do
    fn (n) -> Enum.map(list, &(&1 * n)) end
  end
end
