# Chapter 4 > Elixir Basics > Collection Types > Lists

IO.puts "
Lists

A List is a linked data structure, that can:
    * be defined as [1, 2, 3].
    * be empty.
    * be made of a Head and Tail, where the Head is a value and the Tail a List itself.

But a List is not like an array, Tuples are more near of that concept.

Elixir data structures are immutable, therefore a list can never be changed, but values can be retrieved, like the
 the Head or the Tail.

Trying to access in random order a List is expensive, so is cheaper to just get the Head and leave the Tail.

Chapter 7 is about Lists and recursion and more detailed use of Lists will be presented.
"

IO.write "
# Concatenation Operator
iex()> [1, 2, 3] ++ [4, 5, 6]
"
IO.inspect([1, 2, 3] ++ [4, 5, 6])

IO.write "
# Difference Operator
iex()> [1, 2, 3, 4] -- [2, 4]
"
IO.inspect([1, 2, 3, 4] -- [2, 4])

IO.write "
# Membership Operator with true membership
iex()> 1 in [1, 2, 3, 4]
"
IO.inspect(1 in [1, 2, 3, 4])

IO.write "
# Membership Operator with false membership
iex()> \"foo\" in [1, 2, 3, 4]
"
IO.inspect("foo" in [1, 2, 3, 4])
