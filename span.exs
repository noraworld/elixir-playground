defmodule MyList do
  def span(from, to) when (from  >  to) do
    raise "The first argument must be less than or equal to the second one"
  end

  def span(from, to) when (from === to), do: [from]
  def span(from, to), do: [from] ++ span(from + 1, to)
end
