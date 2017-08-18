# Chapter 6 > Modules and Named Functions > Functions Call and Pattern Matching
# From page 49

defmodule Factorial1 do

  # The anchor solution is the one that always provide the definitive answer and must be declared as the first function
  # in the module.
  def of(0) do
    1
  end

  # The recursive solution that will end up to use the anchor one to provide the definitive answer.
  def of(number) do
    number * of(number - 1)
  end

  def docs() do

    IO.puts "
    A very common design pattern for Modules in Elixir is to write them in a way that the first simplest possible case
    must be the first function in the module.

    This is the solution that as the definitive answer and will be the anchor in the module.

    The following functions will be recursive solutions that will end up using the anchor one to find the definitive answer.

    Following this design pattern will ensure that we keep our modules with focus in doing only one thing.

    Need to keep in mind that Elixir will read functions in the module from top to bottom, therefore the order they
    appear is important when creating this type of functions flow in a module.


    ---> How to use this module form iex:

    iex> c \"examples/factorial-1.exs\"
    [Factorial]

    iex> IO.puts(Factorial.of(5))
    120
    "
  end

end
