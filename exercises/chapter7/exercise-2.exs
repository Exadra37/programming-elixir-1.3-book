# Chapter 7 > Lists and Recursion > Generalizing Our Sum Function > Exercise 2
# Page 73
# Solution Link: http://forums.pragprog.com/forums/322/topics/Exercise:%20ListsAndRecursion-2

defmodule Exercise2 do

  def max(list) do
    _max(list)
  end

  defp _max([]) do
    IO.puts "Please provide at least one element in the list..."
  end

  # ends recursion
  defp _max([head | []]) do
    head
  end

  defp _max([head | [tail_head | tail]]) when head >= tail_head do
    _max([head | tail]) # may start recursion
  end

  defp _max([head | [tail_head | tail]]) when head < tail_head do
    _max([tail_head | tail]) # may start recursion
  end

  def docs() do

    IO.puts """

    GENERALIZING OUR SUM FUNCTION - EXERCISE 2

      This exercise description says that we need write a function to return the max value in a list.

      The public Api:
        → max(list)


    ---> Try it in IEX:

      iex> c "exercises/lists-and-recursion/exercise-2.exs"
      [Exercise2]

      iex> Exercise2.max([1,2,3])
      3

      iex> Exercise2.max([3,2,1])
      3

      iex> Exercise2.max([1,3,2])
      3

      iex> Exercise2.max([3,1,3])
      3

      iex> Exercise2.max([3,1,5,3])
      5

    <---

    """

  end

end
