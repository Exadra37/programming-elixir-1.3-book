# Chapter 7 > Lists and Recursion > Creating a Map anonymous_Function
# Page 69


defmodule MyListMap do

  def map([], _anonymous_function) do
    []
  end

  def map([head | tail], anonymous_function) do

    [anonymous_function.(head) | map(tail, anonymous_function)]

  end

  def docs do

    IO.puts """

    CREATING A MAP FUNCTION

      The modules MyListSquare and MyListIncrement have a very similar way of achieving their purpose, only differing
      in the maths operations.

      We can easily generalize this with a map function that accepts as first argument a list and as a second argument
      an anonymous function to perform the same maths operations as per previous modules to increment or square the
      given list.


    ---> Try it in IEX:

    iex> c "examples/lists-and-recursion/my_list_map.exs"
    [MyListMap]

    # Replicating MyListSquare
    iex> MyListMap.map([1,2,3,4], fn (number) -> number * number end)
    [1, 4, 9, 16]

    # Replicating MyListIncrement
    iex> MyListMap.map([1,2,3,4], fn (number) -> number + 1 end)
    [2, 3, 4, 5]

    # Using the map function for other use cases
    iex> MyListMap.map([1,2,3,4], fn (number) -> number > 2 end)
    [false, false, true, true]

    # Using the map function for other use cases
    iex> MyListMap.map([1,2,["iex", "mix"], "Elixir"], fn (element) -> IO.inspect(element) end)
    1
    2
    ["iex", "mix"]
    "Elixir"
    [1, 2, ["iex", "mix"], "Elixir"]

    """

  end

end
