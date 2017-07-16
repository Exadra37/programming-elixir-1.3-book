# Chapter 5 > Anonymous Functions > Signature

IO.puts "
Anonymous Functions

We created them with their parameters and body between the keywords 'fn' and 'end':
	→ foo = fn (param1, param2) -> body end
	→ bar = fn param1, param2 -> body end # parentheses are optional in the parameters list
	→ xyz = fn -> body end # without parameters

To call a function we do it by invoking the variable we assigned it to:
	→ foo.(param1, param2)
	→ xyz.()

Anonymous Functions need a dot between the variable they are assigned to and the parentheses as opposite to the 
Named Functions that are built in on Elixir or that we define in our own Modules.
"

IO.puts "
iex> greeting = fn -> IO.puts \"Learning Anonymous Functions\" end
#Function<20.118419387/0 in :erl_eval.expr/5>

iex> greeting.()"
greeting = fn -> IO.puts "Learning Anonymous Functions" end
IO.inspect(greeting.())

IO.puts "
iex> sum = fn (value1, value2) -> value1 + value2 end
#Function<12.118419387/2 in :erl_eval.expr/5>

iex> sum.(1, 2)"
sum = fn (value1, value2) -> value1 + value2 end
IO.inspect(sum.(1, 2))

IO.puts "
iex> multiply = fn value1, value2 -> value1 * value2 end
#Function<12.118419387/2 in :erl_eval.expr/5>

iex> multiply.(2, 3)"
multiply = fn value1, value2 -> value1 * value2 end
IO.inspect(multiply.(2, 3))

IO.puts "
# Checking info about variable 'multiply'
iex> i multiply
Term
  #Function<12.118419387/2 in :erl_eval.expr/5>
Data type
  Function
Type
  local
Arity
  2
Description
  This is an anonymous function.
Implemented protocols
  IEx.Info, Enumerable, Inspect
"
