# Chapter 5 > Anonymous Functions > Exercises > Pair Tuple To List


IO.puts "
Exercise:Functions-1 on page 39

Pair Tuple to List

Build a anonymous function to convert a tuple with a pair of values into a list.
"

IO.puts "
iex> pair_tuple_to_list = fn ({value1, value2}) -> [value1, value2] end
#Function<6.118419387/1 in :erl_eval.expr/5>

iex> pair_tuple_to_list.({1234, 5678})"
pair_tuple_to_list = fn ({value1, value2}) -> [value1, value2] end
IO.inspect(pair_tuple_to_list.({1234, 5678}))
