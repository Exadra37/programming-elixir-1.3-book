# Chapter 4 > Elixir Operators > Operators > Boleans


IO.puts "
Some Background:

Elixir has the concept of Truthy where any value that is not false or nil is treated as a true value. This is valid for almost 
all contexts.

In Elixir we have:
	→ true as an alias of atom :true
	→ false as an alias of atom :false
	→ nil as an alias of :nil, that is treated as false in boolean contexts.

Let's confirm:"

IO.puts "
iex> true === :true"
IO.inspect(true === :true)

IO.puts "
iex> false === :false"
IO.inspect(false === :false)

IO.puts "
iex> nil === :nil"
IO.inspect(nil === :nil)


IO.puts "
In many languages 'or' or '&&' mean exactly the same, but not in Elixir. The same olds true for 'or' and '||'.

Boolean Operators in Elixir expect true, false or nil as the first argument: 
	→ and
	→ or
	→ not

Relaxed Boolean Operators accept as first agument Truthy and Bolean values:
	→ &&
	→ ||
	→ ! 
"

IO.puts "---> Examples for `and`, `&&` <---"

IO.puts "
iex> true and true"
IO.inspect(true and true)

IO.puts "
iex> true and 'truthy'"
IO.inspect(true and 'truthy')

IO.puts "
# First argument must be always a bolean when using the bolean `and` operator or an error will be raised.
iex> 'truthy' and true
** (BadBooleanError) expected a boolean on left-side of \"and\", got: 'truthy'"
#IO.inspect('truthy' and true)

IO.puts "
# Using the Relaxed Boolean Operator...
iex> 'truthy' && true"
IO.inspect('truthy' && true)

IO.puts "
# Using the Relaxed Boolean Operator...
iex> true && 'truthy'"
IO.inspect(true && 'truthy')


IO.puts "

---> Examples for `or`, `||` <---
"

IO.puts "
iex> true or true"
IO.inspect(true or true)

IO.puts "
iex> true or 'truthy'"
IO.inspect(true or 'truthy')

IO.puts "
# First argument must be always a bolean when using the bolean `or` operator or an error will be raised.
iex> 'truthy' or true
** (BadBooleanError) expected a boolean on left-side of \"or\", got: 'truthy'"
#IO.inspect('truthy' or true)

IO.puts "
# Using the Relaxed Boolean Operator...
iex> 'truthy' || true"
IO.inspect('truthy' || true)

IO.puts "
# Using the Relaxed Boolean Operator...
iex> true || 'truthy'"
IO.inspect(true || 'truthy')


IO.puts "

---> Examples for `not`, `!` <---
"

IO.puts "
iex> not true"
IO.inspect(not true)

IO.puts "
# First argument must be always a bolean when using the bolean `not` operator or an error will be raised.
iex> not 'truthy'
** (ArgumentError) argument error
    :erlang.not('truthy')"
#IO.inspect(not 'truthy')

IO.puts "
# Using the Relaxed Boolean Operator...
iex> !'truthy'"
IO.inspect(!'truthy')

IO.puts "
# Using the Relaxed Boolean Operator...
iex> !true"
IO.inspect(!true)
