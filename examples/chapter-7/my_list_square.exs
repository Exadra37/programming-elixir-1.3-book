# Chapter 7 > Lists and Recursion > Using Head and Tail to Build a List
# Page 69

defmodule MyListSquare do

  # end of recursion
  def square([]) do
    []
  end

  def square([head | tail]) do

    IO.puts """
    → square(#{inspect(tail)})"
    [#{head * head} | #{inspect(tail)}]
    """

    [head * head | square(tail)] # recursion starts here

  end

  def docs() do

    IO.puts """

    USING HEAD AND TAIL TO BUILD A LIST

      We can use easily recursion to build a list.

      From a given list we can build for example a new list with the square of each number in the provided list.

      We achieve this by calculating the square of the first number in the list(the head) and calling recursively the
      square function with the remaining numbers(the tail) until we don't have more numbers left to calculate the
      square. So the recursion will end when the square function calls itself with an empty list.


    ---> Try it in IEX:

      iex> c "examples/chapter-7/my_list_square.exs"
      [MyListSquare]

      iex> MyListSquare.square([4, 5, 6])
      → square([5, 6])"
      [16 | [5, 6]]

      → square([6])"
      [25 | [6]]

      → square([])"
      [36 | []]

      [16, 25, 36]

    <---

    """

  end

end
