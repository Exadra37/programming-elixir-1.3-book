# CHAPTER: More Complex Matches

# TO RUN: elixir more-complex-matches.exs

IO.puts "To see some more complex pattern matches with the match operator we will use lists:"
IO.puts " - Lists can be defines with square brackets, like this:"
IO.puts "   [\"Humperdinck\", \"Buttercup\", \"Fezzik\"]"
IO.puts "   [\"milk\", \"butter\", [\"iocane\", 12]]"

IO.puts "\nLet's try now soem more complex pattern matches, using lists..."
IO.puts "iex()> list = [1, 2, 3]"
# inspect needs to be used because Erlang VM sees numeric values as ASCII representations... more on this later in another chapter.
IO.inspect(list = [1, 2, 3])
IO.puts "Once list variable is not defined yet the Elixir evaluates the match to true by performing the bound of [1, 2, 3] to variable list."

IO.puts "Let's play a little more with lists..."
IO.puts "iex()> list = [1, 2, 3]"
IO.inspect(list = [1, 2, 3])
IO.puts "iex(()> [var1, var2, var3] = list"
IO.inspect([var1, var2, var3] = list)
IO.puts "iex()> var1"
IO.puts(var1)
IO.puts "iex()> var2"
IO.puts(var2)
IO.puts "iex()> var3"
IO.puts(var3)
IO.puts "Elixir is a magic potion, do you remember eh..."
IO.puts "Once Elixir sees that it has 3 unsigned variables in the left side and 3 values on right side they can be made equal."
IO.puts "Elixir calls this:"
IO.puts " - Process Pattern Matching"

IO.puts "\nAnother Example..."
IO.puts "iex()> list = [1, 2, 3]"
IO.inspect(list = [1, 2, 3])
IO.puts "iex()> [var1, 1, var2] = list"
IO.inspect([var1, 2, var2] = list)
IO.puts "iex()> var1"
IO.puts(var1)
IO.puts "iex()> var2"
IO.puts(var2)
IO.puts "It is able to succeed because left and right hand side can be made with same values and structure:"
IO.puts " [1, 2, 3] = [1, 2, 3]"

IO.puts "\nA failure Example..."
IO.puts "iex()> list = [1, 2, 3]"
IO.inspect(list = [1, 2, 3])
IO.puts "iex()> [var1, 1, var2] = list"
IO.puts "This match will return false, therefore not setting variables and throwing an exception because left side can't be made same of side right side as it would look like:"
IO.puts " [1, 1, 3] = [1, 2, 3]"
IO.inspect([var1, 1, var2] = list)
