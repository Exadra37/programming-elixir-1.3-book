# Chapter 7 > Lists and Recursion > Generalizing Our Sum Function
# Page 73
# Solution Link: http://forums.pragprog.com/forums/322/topics/Exercise:%20ListsAndRecursion-1

defmodule Exercise1 do

  # ends recursion
  def mapsum([], _anonymous_function) do
    0
  end

  def mapsum([head | tail], anonymous_function) do
    anonymous_function.(head) + mapsum(tail, anonymous_function) # starts recursion
  end

  def docs() do

    IO.puts """

    GENERALIZING OUR SUM FUNCTION

      As per exercise instructions we need to write a function that accepts a list and a anonymous function to be
      applied in each element of the list and then returns the sum of all results.

      The function Api:
        → mapsum(list, anonymous_function)


    ---> Try it in IEX:

    iex> c "exercises/lists-and-recursion/exercise-1.exs"
    [Exercise1]

    iex> Exercise1.mapsum([1,2,3], &(&1 * &1))
    14

    <---

    """

  end

end
