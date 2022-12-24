defmodule MyList do
  def max([head|tail]) when (length(tail) === 0), do: head

  def max([head|tail]) when (head >= hd(tail)) do
    max([head] ++ tail -- [hd(tail)])
  end

  def max([head|tail]) when (head < hd(tail)), do: max(tail)
end
