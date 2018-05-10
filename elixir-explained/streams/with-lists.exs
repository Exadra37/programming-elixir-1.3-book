# Chapter 10 > Streams - Lazy Enumerables
# Page 99

# In order to achieve the desired output in this pipeline we need to:
#   → The first map function accepts the list and outputs a new list with
#       the squares of it.
#   → The with_index will take the list with the squares and returns a list of
#       tuples with the square values indexed.
#   → The last map function accepts the list of tuples and applies a function
#       to it and returns the result in a list.
#
# So to achieve the desired result we need to work with 4 lists.
[1, 2, 3, 4, 5]
|> Enum.map(&(&1 * &1)) #=> [1, 4, 9, 16, 25]
|> Enum.with_index() #=> [{1, 0}, {4, 1}, {9, 2}, {16, 3}, {25, 4}]
|> Enum.map(fn {value, index} -> value - index end)  #=> [1,3,7,13,21]
|> IO.inspect()

# Using a Stream the above will be achieved by working only with the initial list.
#
# So in each step of the pipeline instead of returning another list a function
#   specification is returned that contains what must be applied to each element
#   when is used outside the stream, like in stream_return |> Enum.to_list().
#
# Streams are composable, this means we can pass the return of one stream as
#   argument of the next stream.
#
# Rewriting the above example using streams means that instead of creating
# intermediate results we only create functions with what must be applied when
# using the stream result on the Enum.to_list.

[1, 2, 3, 4, 5]
|> Stream.map(&(&1 * &1))
|> Stream.with_index()
|> Stream.map(fn {value, index} -> value - index end)
|> Enum.to_list()
