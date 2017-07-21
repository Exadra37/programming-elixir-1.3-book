# Chapter 5 > Anonymous Functions > Passing Functions As Arguments


IO.puts "
Elixir consider functions as just values, therefore they can be passed to other functions as arguments.

Example:

double = fn (value) -> value * 2 end

double_it = fn (double, value) -> double.(value) end

IO.puts(double_it.(double, 4))"

double = fn (value) -> value * 2 end

double_it = fn (double, value) -> double.(value) end

IO.puts(double_it.(double, 4))


IO.puts "

Elixir leverage this type of use internally.

For example the built in module Enum as the function 'map' that accepts a list as the first argument and a functions as
the second argument.

Examples:

list = [1, 3, 5, 7, 9]"

list = [1, 3, 5, 7, 9]

IO.puts "
# Let's multiply each value in the list by itself
IO.inspect(Enum.map(list, fn (value) -> value * value end))"
IO.inspect(Enum.map(list, fn (value) -> value * value end))

IO.puts "
# Let's see what values in the list are greater than 6"
IO.inspect(Enum.map(list, fn (value) -> value > 6 end))
