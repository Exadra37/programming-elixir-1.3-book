# Chapter 7 > Lists and Recursion > Keeping Track of Values During Recursion
# Page 70


defmodule MyListSum do

  def sum(list) do
    _sum(list, 0)
  end

  # Recursion ends here.
  defp _sum([], total) do
    total
  end

  # We want to hide implementation details from the public API and to keep the Module human readable we use the same
  #  public function name prefixed with an underscore in all related private functions.
  defp _sum([head | tail], total) do

    IO.puts "_sum(#{inspect(tail)}, #{head} + #{total})"

    _sum(tail, head + total) # recursion starts here

  end

  def docs() do

    IO.puts """

    KEEPING TRACK OF VALUES DURING RECURSION

      On modules MySquare or MyIncrement we don't have the need to keep track of the result of the maths operations in
      order to use them in the next recursion of the function, but if we want to calculate a sum of all elements in a
      list we will need it for sure.

      To keep track of the sum total we just need to pass it as the second argument in the recursive functions and we
      define the recursive functions as private.

      Keeping the implementation details as private allows us not having to pass the initial total value when asking for
      the sum of the list in the public function.


    ---> Try in IEX:

      iex> c "examples/lists-and-recursion/my_list_sum.exs"
      [MyListSum]

      iex> MyListSum.sum([1,2,3,4,5])
      _sum([2, 3, 4, 5], 1 + 0)
      _sum([3, 4, 5], 2 + 1)
      _sum([4, 5], 3 + 3)
      _sum([5], 4 + 6)
      _sum([], 5 + 10)
      15

    <---

    """

  end

end
