# Chapter 7 > Lists and Recursion > Generalizing Our Sum Function
# Page 72


defmodule MyListReduce do

  def reduce([], value, _) do
    value
  end

  def reduce([head | tail], value, anonymous_function) do
    reduce(tail, anonymous_function.(head, value), anonymous_function)
  end

  def docs() do

    IO.puts """

    GENERALIZING OUR SUM FUNCTION

      In MyListSum we can see that we reduce a collection to a single value and this can be a way of solving many other
      situations that are not a sum.

      So we can rewrite it to have a generic use by accepting a collection, the initial value to start working with and
      the anonymous function with the necessary to operate on the collection and initial value.

      The public Api:
        → reduce(list, initial_value, anonymous_function)


    ---> Try it in IEX:

      iex> c "examples/lists-and-recursion/my_list_reduce.exs"
      [MyListReduce]

      iex> MyListReduce.reduce([1,2,3,4,5], 0, &(&1 + &2))
      15

      iex> MyListReduce.reduce([1,2,3,4,5], 0, fn (head, total) -> head + total end)
      15

      iex> MyListReduce.reduce([1,2,3,4,5], 1, &(&1 * &2))
      120

      iex> MyListReduce.reduce([1,2,3,4,5], 1, fn (head, total) -> head * total end)
      120

    <---

    """

  end

end
