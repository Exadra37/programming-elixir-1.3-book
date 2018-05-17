# Chapter 7 > Lists and Recursion > Exercise 0
# Page 72
# LINK: https://forums.pragprog.com/forums/322/topics/Exercise:%20ListsAndRecursion-0

defmodule Exercise0 do

  def sum(list) do
    _sum(list)
  end

  # end recursion
  defp _sum([ total | [] ]) do
    total
  end

  defp _sum([ total | [ tail_head | tail ]]) do

    IO.puts "→ _sum([#{total} + #{tail_head}, #{inspect(tail)})"
    _sum([ total + tail_head | tail ]) # start recursion
  end

  def docs() do

    IO.puts """

    LISTS AND RECURSION - EXERCISE 0

      Rewrite the MyListSum module to not use a second argument to pass the total of the sum between the recursive calls.

      We can achieve this by putting the total as the head of the list, after we sum the list head with tail head and
      call afterwards the private _sum function recursively until we end up with a empty tail, that will make the
      recursion to finish and return the total for the list sum.


    ---> Try it in IEX:

      iex> c "exercises/lists-and-recursion/exercise-0.exs"
      [Exercise0]

      iex> Exercise0.sum([1,2,3,4,5])
      → _sum([1 + 2, [3, 4, 5])
      → _sum([3 + 3, [4, 5])
      → _sum([6 + 4, [5])
      → _sum([10 + 5, [])
      15

    <---

    """

  end

end
