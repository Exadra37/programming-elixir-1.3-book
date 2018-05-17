# Chapter 7 > Lists and Recursion > Using Head and Tail to Process a List
# Page 67


defmodule MyListLength do

  # recursion ends here
  def len([]) do
    0
  end

  def len([_head | tail]) do

    IO.puts "→ len(#{inspect(tail)})"

    1 + len(tail) # recursion starts here

  end

  def docs() do

    IO.puts """

    LIST RECURSION

    Let's see an example to count recursively the total number of elements in a list.

    iex> c "examples/lists-and-recursion/my_list_length.exs"
    [MyListLength]

    iex> MyList.len([11, 12, 13, 14, 15])
    → len([12, 13, 14, 15])
    → len([13, 14, 15])
    → len([14, 15])
    → len([15])
    → len([])
    5

    """

  end

end
