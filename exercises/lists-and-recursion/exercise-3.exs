# Chapter 7 > Lists and Recursion > Generalizing Our Sum Function > Exercise 3
# Page 73
# Solution Link: http://forums.pragprog.com/forums/322/topics/Exercise:%20ListsAndRecursion-3

defmodule Exercise3 do

  def caesar([], _n), do: []

  def caesar([ head | tail ], n)
    when head+n <= ?z,
    do: [ head+n | caesar(tail, n) ]

  def caesar([ head | tail ], n),
    do: [ head+n-26 | caesar(tail, n) ]

  def docs() do

    IO.puts """

    The book description for this exercise is far from be clear in telling what is to be done.

    Despite I am not a native English speaker, neither my colleagues that are native speakers where able to understand it.

    So the solution of this Exercise is a copy paste from David Thomas solution in the forum.

    Also the solution makes use of `<= ?z` and I don't remember to see `?` being used like this previously in this book.


    ---> Try it in IEX:

    iex(1)> c "exercises/lists-and-recursion/exercise-3.exs"
    [Exercise3]

    iex(2)> Exercise3.caesar('ryvkve', 13)
    'elixir'

    <---

    """

  end
end
