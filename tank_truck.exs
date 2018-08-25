defmodule Tank do
  def tank_vol(h, d, vt) do
    radius = d / 2
    cylinder_length = vt / (:math.pi * (radius * radius))
    volume =
      cylinder_length * (((radius * radius) * :math.acos((radius - h) / radius)) - ((radius - h) * :math.sqrt((2 * radius * h) - (h * h))))

    trunc(volume)
  end
end
