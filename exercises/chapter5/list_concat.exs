# Chapter 5 > Anonymous Functions > Exercises > List Concat

IO.puts "
Exercise:Functions-1 on page 39

List Concat

Build an anonymous functions that will allow to concatenate 2 lists."

IO.puts "
iex> list_concat = fn (list1, list2) -> list1 ++ list2 end
#Function<12.118419387/2 in :erl_eval.expr/5>

iex> list_concat.([:a, :b], [:c, :d])"

list_concat = fn (list1, list2) -> list1 ++ list2 end
IO.inspect(list_concat.([:a, :b], [:c, :d]))
