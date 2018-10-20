defmodule Bouncingball do

  def bouncing_ball(height, _, _) when height <= 0, do: -1
  def bouncing_ball(_, bounce, _) when bounce <= 0, do: -1
  def bouncing_ball(_, bounce, _) when bounce >= 1, do: -1
  def bouncing_ball(height, _, window) when window >= height, do: -1
  def bouncing_ball(_, _, window) when window <= 0, do: -1

  def bouncing_ball(height, bounce, window) do
    2 + bouncing_ball(height * bounce, bounce, window)
  end

end
