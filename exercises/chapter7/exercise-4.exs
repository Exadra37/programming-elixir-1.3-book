# Chapter 7 > Lists and Recursion > More Complex List Patterns > Exercise 4
# Page 76
# Solution Link: http://forums.pragprog.com/forums/322/topics/Exercise:%20ListsAndRecursion-4
#

defmodule Exercise4 do

  @moduledoc """
  # Exercise 4

  Write a function MyList.span(from, to) that returns a list of the numbers
  from up to to.

  The [Author solution](http://forums.pragprog.com/forums/322/topics/Exercise:%20ListsAndRecursion-4) is more clean and straigth foward
  then my solution.

  Also my solution does not validate if `from` is greater then `to`, but this
  was a conscious decision from me.
  """

  @doc """
  ## Entry point for the Exercise 4 module.

  Calculates a list of numbers composed with all the numbers in the given
  interval.

  #### Examples:

  iex> Exercise4.span(1,4)
  [1, 2, 3, 4]

  iex> Exercise4.span(1,1)
  [1]

  """
  def span(from, to) do
    _span([from, to])
  end

  # Recursion ends here
  defp _span([ head | [tail_head | tail] ]) when head === tail_head do
    [head | tail]
  end

  # Recursion starts here
  defp _span([ head | [tail_head | tail] ]) do
    _span([ head, tail_head - 1, tail_head | tail ])
  end

end
