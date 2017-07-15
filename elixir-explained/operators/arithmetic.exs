# Chapter 4 > Elixir Operators > Operators > Arithemetic

IO.puts "
Arithmetic Operators
	→ +
	→ -
	→ *
	→ /
	→ div
	→ rem
"

IO.puts "
iex> 2 + 1"
IO.inspect(2 + 1)

IO.puts "
iex> 2 - 1"
IO.inspect(2 - 1)

IO.puts "
iex> 2 * 1"
IO.inspect(2 * 1)

IO.puts "
# Using the '/' operator always give us the result as a float
iex> 11/ 3"
IO.inspect(11 / 3)

IO.puts "
# Using the 'div' operator always give us the result as a integer
iex> div(11, 3)"
IO.inspect(div(11, 3))

IO.puts "
# Using the 'rem' operator always give us the remanescent of the division as a integer
iex> rem(11, 3)"
IO.inspect(rem(11, 3))
