# Chapter 5 > Anonymous Functions > Pattern Matching Parameters


IO.puts "
Pattern Matching Parameters

When we call an anonymous function and we pass some arguments to it they will be Pattern Matched to the parameters.

Given `foo = fn ({value1, value2}) -> body end` when we call `foo.({1, 2})` Elixir will performe under the hood the 
Pattern Matching operation as `{param1, param2} = {1, 2}`.

So this means we can levarege the power of Pattern Matching to do some clever things.
"

IO.puts "
iex> swap = fn ({value1, value2}) -> {value2, value1} end
#Function<12.118419387/2 in :erl_eval.expr/5>

iex> swap.({1, 2})"
swap = fn ({value1, value2}) -> {value2, value1} end
IO.inspect(swap.({1, 2}))
