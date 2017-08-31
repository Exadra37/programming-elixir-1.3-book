# Chapter 4 > Elixir Basics > Operators > Join

# Chapter 7 > Lists and Recursion > More Complex List Patterns > Pipe Operator
# Page 73

IO.puts """

JOIN OPERATORS

  → <> # concatenates binaries or strings
  → ++ # concatenates 2 lists
  → -- # removes elements from a list by returning another list without them
  →  | # joins elements from the left to the list in the right

  NOTE: The pipe is not a true join operator once it can be also used to split lists into head and tail.


---> Try it in IEX:

  iex> "Hello" <> " World"
  #{inspect("Hello" <> " World")}

  iex> ["Hello", "World"] ++ ["Learning", "Elixir"]
  #{inspect(["Hello", "World"] ++ ["Learning", "Elixir"])}

  iex> ["Hello", "World"] -- ["World"]
  #{inspect(["Hello", "World"] -- ["World"])}

  # the pipe | example.
  iex> [1, 2, 3 | [4, 5, 6]]
  #{inspect([1, 2, 3 | [4, 5, 6]])}

<---

"""
