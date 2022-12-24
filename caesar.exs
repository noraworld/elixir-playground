defmodule MyList do
  def caesar([head|tail], n) when (length(tail) === 0) do
    [97 + rem(head + n - 97, 26)]
  end

  def caesar([head|tail], n) when (length(tail) !== 0) do
    [97 + rem(head + n - 97, 26)] ++ caesar(tail, n)
  end
end
