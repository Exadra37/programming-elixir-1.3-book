# Chapter 5 > Anonymous Functions > Short Hand Signature
# pag. 44 > The & Notation

IO.puts "

The normal signature for a anonymous functions looks like:
    → fn parameters -> body end

The short hand version looks like:
    → &(body)

When using the parameters in the body they need to be prefixed with the ampersand operator '&' and followed by their
position.


Practical Example:

iex> add_one = &(&1 + 1)
#Function<6.118419387/1 in :erl_eval.expr/5>

iex> IO.puts(add_one.(44))
45
:ok
"
# uncomment below lines to confirm the above
#add_one = &(&1 + 1)
#IO.puts(add_one.(44))

IO.puts "
iex> square = &(&1 * &1)
#Function<6.118419387/1 in :erl_eval.expr/5>
iex> IO.puts(square.(8))
64
:ok
"
# uncomment below lines to confirm the above
#square = &(&1 * &1)
#IO.puts(square.(8))


IO.puts "
---> Making alias to Elixir or Erlang functions is easy as:

# Elixir Alias:

iex> length = &Enum.count/1
&Enum.count/1

iex>length.([1, 2, 3, 4])"
length = &Enum.count/1
IO.puts(length.([1, 2, 3, 4]))

IO.puts "
# Erlang Alias:

iex> min = &Kernel.min/2
&:erlang.min/2

iex> min.(99, 98)"
min = &Kernel.min/2
IO.puts(min.(99, 98))


IO.puts "

---> Passing Anonymous functions to other functions

iex> Enum.map [1, 2, 3, 4], &(&1 * &1)"
IO.inspect(Enum.map [1, 2, 3, 4], &(&1 * &1))
