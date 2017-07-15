# Chapter 4 > Elixir Operators > Operators > Comparison

IO.write "
COMPARISON OPERATORS

This operators let us to compare two values for:
    * strict equality
    * strict inequality
    * value equality(not strict)
    * value inequality(not strict)
    * greater than
    * greater than or equal to
    * less than
    * less than or equal to

Comparison are done using natural ordering when types are the same(3 > 2) or compatible (3 > 2.0), otherwise is done 
based on type according to this rule:
        * number < atom < reference < function < port < pid < tuple < map < list < binary

"

IO.puts "---> Strict Equality"

IO.write "
iex> 1 === 1
"
IO.inspect(1 === 1)

IO.write "
iex> 1 === 1.0
"
IO.inspect(1 === 1.0)


IO.puts "
---> Strict Inequality"

IO.write "
iex> 1 !== 1
"
IO.inspect(1 !== 1)

IO.write "
iex> 1 !== 1.0
"
IO.inspect(1 !== 1.0)


IO.puts "
---> Normal Comparison"

IO.puts"
iex> 1 > 2"
IO.inspect(1 > 2)

IO.puts"
iex> 1 >= 2"
IO.inspect(1 >= 2)

IO.puts"
iex> 1 < 2"
IO.inspect(1 < 2)

IO.puts"
iex> 1 <= 2"
IO.inspect(1 <= 2)
