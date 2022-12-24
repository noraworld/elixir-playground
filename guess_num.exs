defmodule Chop do
  def guess(actual, min..max) when (actual === div(min + max, 2)) do
    IO.puts "#{actual}"
  end

  def guess(actual, min..max) when (actual  >  div(min + max, 2)) do
    IO.puts "Is it #{div(min + max, 2)}?"
    guess(actual, div(min + max, 2)..max)
  end

  def guess(actual, min..max) when (actual  <  div(min + max, 2)) do
    IO.puts "Is it #{div(min + max, 2)}?"
    guess(actual, min..div(min + max, 2))
  end
end
