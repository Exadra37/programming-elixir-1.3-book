# Chapter 5 > Anonymous Functions > Exercises > Sum


IO.puts "
Exercise:Functions-1 on page 39

Sum

Build a anonymous function to sum 3 values.
"

IO.puts "
iex> sum = fn (value1, value2, value3) -> value1 + value2 + value3 end
#Function<18.118419387/3 in :erl_eval.expr/5>

iex> sum.(1, 2, 3)"
sum = fn (value1, value2, value3) -> value1 + value2 + value3 end
IO.inspect(sum.(1, 2, 3))
