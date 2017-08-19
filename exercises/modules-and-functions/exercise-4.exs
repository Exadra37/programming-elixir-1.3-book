# Chapter 6 > Modules and Named Functions > Functions Call and Pattern Matching > Exercise 4
# page 51

defmodule Calculator do

  # The anchor solution, that represents the simplest case.
  def sum(1) do
    1
  end

  # The recursive solution that will end up when a match for the anchor solution is reached: sum(1).
  def sum(number) do

    # give 4 as the number the recursion looks like: 4 + (3 + (2 + (1)))
    number + sum(number - 1)

  end

  def docs() do

    IO.puts "
    This module implements a function sum(number) using recursion to calculate the sum of the integers from 1 to the
    given number.


    ---> IEX example output:

    iex> c \"examples/exercise4.exs\"
    [Recursive]

    iex> Calculator.sum(4)
    10
    "

  end

end

