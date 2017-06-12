# CHAPTER -> Assignment: I do not think it means what you think it means.

# TO RUN: elixir assignment-is-not-what-you-think-it-is
IO.puts "\nVariable Assignments are not what we think they are...\n"

IO.puts "Example: A normal variable assignment\n"
IO.puts "iex()> foo = 1"
IO.write(foo = 1)
IO.puts " # Variable foo as now the value 1."

IO.puts "\nLet's now perform a sum on it:"
IO.puts "iex()> foo + 3"
IO.write(foo + 3)
IO.puts " # (1 + 3) gives 4 as we expect, but the variable foo have not changed is value.\n"

IO.puts "iex()> foo"
IO.write(foo)
IO.puts " # The value for foo still have the initial value of 1.\n"

IO.puts "On Elixir the equal sign(=) is not an assignment operator, instead is called a Match Operator."
IO.puts "This means that primarily Elixir tries to perform a match between left and right side, but if the left side is"
IO.puts " a variable than the match result is 'true' and Elixir binds the right hand side to the variable on the left side."
IO.puts "Ok I know by this time your are saying... but that stills an assignment!!!"
IO.puts "---> Remember Elixir is a magic potion, therefore things work different ;)\n"

IO.puts "So let's prove that we are doing Pattern Matching when using the equal sign operator...\n"
IO.puts "iex()> bar = 3"
IO.puts (bar = 3)
IO.puts "iex()> 3 = bar"
IO.write (3 = bar)
IO.puts " # (3 = 3) left side equals to right side, therefore we have a match, but nothing is being assigned, once left"
IO.puts "   side isn't a variable. \n"

IO.puts "iex()> 4 = bar"
IO.puts "# (4 = 3) Left side and right are different therefore a Match Error is raised and also no assignment attempt"
IO.puts "  is being done."
IO.puts (4 = bar)
