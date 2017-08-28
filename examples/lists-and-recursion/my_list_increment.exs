# Chapter 7 > Lists and Recursion > Using Head and Tail to Build a List
# Page 69

defmodule MyListIncrement do

  # end of recursion
  def increment([]) do
    []
  end

  def increment([head | tail]) do

    IO.puts """
    → increment(#{inspect(tail)})"
    [#{head + 1} | #{inspect(tail)}]
    """

    [head + 1 | increment(tail)] # recursion starts here

  end

  def docs() do

    IO.puts """

    USING HEAD AND TAIL TO BUILD A LIST

      From a given list we can build for example a new list that increments each number in the provided list by 1.

      We achieve this by calculating the increment of the first number in the list(the head) and calling recursively the
      increment function with the remaining numbers(the tail) until we don't have more numbers left to calculate the
      increment. So the recursion will end when the increment function calls itself with an empty list.


    ---> Try it in IEX:

      iex> c "examples/lists-and-recursion/my_list_increment.exs"
      [MyListIncrement]

      iex> MyListIncrement.increment([1,3,5])
      → increment([3, 5])"
      [2 | [3, 5]]

      → increment([5])"
      [4 | [5]]

      → increment([])"
      [6 | []]

      [2, 4, 6]

    <---

    """

  end

end
