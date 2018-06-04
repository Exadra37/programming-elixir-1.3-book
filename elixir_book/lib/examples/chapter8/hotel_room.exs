# Chapter 8 > Maps, Keyword Lists, Sets and Structs > Pattern Matching and Updating Maps
# Programming Elixir 1.6 on Page 86

defmodule HotelRoom do

  @moduledoc """
  # Pattern Matching with Conditional Expressions

  This modules exemplifies how we can leverage pattern matching with conditional
  expressions in order to handle different cases without the need to recur to
  the traditional `if else` approach.

  With pattern matching we can match only the data we are interested in amd then
  using a `when` expression we can further filter in order to decide if is the
  case we want to handle in the function.

  This allows to have specialized functions for each case, helping this way to
  keep the code in each function small and easy to reason about.
  """

  def book(%{name: name, height: height})
  when height > 1.9 do
    IO.puts "Need extra-long bed for #{name}"
  end

  def book(%{name: name, height: height})
  when height < 1.3 do
    IO.puts "Need lower shower controls for #{name}"
  end

  def book(person) do
    IO.puts "Need regular bed for #{person.name}"
  end

end

people = [
  %{ name: "Grumpy",    height: 1.24 },
  %{ name: "Dave",      height: 1.88 },
  %{ name: "Dopey",     height: 1.32 },
  %{ name: "Shaquille", height: 2.16 },
  %{ name: "Sneezy",    height: 1.28 },
]

people
|> Enum.each(&HotelRoom.book/1)
