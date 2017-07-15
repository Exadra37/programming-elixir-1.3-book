# Chapter -> Variables Bind Once (per ?Match)
# TO RUN: elixir variables-bind-once-per-match.exs

IO.puts "iex()> [foo, foo] = [1, 1]"
IO.inspect([foo, foo] = [1, 1])
IO.puts "# [1, 1] = [1, 1] Pattern Matching will evaluate the first value in the right side list and assign it to foo"
IO.puts "#  variable. When evaluating the second value on the right side list is able to match it to the second value"
IO.puts "#  on the left list, once this value is represented by the previously assigned variable foo.\n"

IO.puts "iex()> foo"
IO.write(foo)
IO.puts " # The variable foo value is 1 as expected.\n"

IO.puts "In Elixir a variable can be assigned only on is first occurrence during the life cycle of Pattern Matching."
IO.puts "This means than in any subsequent occurrence of foo, Elixir will evaluate is value, not a reassignment on foo. \n"

IO.puts "So being said the above, let's prove it with the next example...\n"

IO.puts "iex()> [foo, foo] = [1, 2]"
IO.puts "# [1, 1] = [1, 2] Left and right lists don't match because foo can't be assigned twice during the Pattern"
IO.puts "# Matching, therefore this will result in Elixir raising a Match Error."
IO.inspect([foo, foo] = [1, 2])
