# Chapter 7 > Lists and Recursion > More Complex List Patterns
# Page 73

defmodule MyListSwap do

  # ends recursion
  def swap([]) do
    []
  end

  def swap([head, tail_head | tail]) do
    [tail_head, head | swap(tail)] # starts recursion
  end

  def swap([_]) do
    raise "Can't swap a list with an odd number of elements"
  end

  def docs() do

    IO.puts """

    MORE COMPLEX LIST PATTERNS

      The pipe `|` can also be used, as I already have used previously, to join the left values of a list with the tail.

      This module exemplifies how it can be used to process recursively 2 elements at a time in a list, provided that
      the list doesn't have a odd number of elements.


    ---> Try it in IEX:

      iex>  c "examples/lists-and-recursion/my_list_swap.exs"
      [MyListSwap]

      iex(10)> MyListSwap.swap([1,2,3,4,5,6])
      [2, 1, 4, 3, 6, 5]

      iex> MyListSwap.swap([1,2,3,4,5,6,7])
      ** (RuntimeError) Can't swap a list with an odd number of elements
          examples/lists-and-recursion/my_list_swap.exs:15: MyListSwap.swap/1
          examples/lists-and-recursion/my_list_swap.exs:11: MyListSwap.swap/1

    <---

    """

  end

end
