# CHAPTER: More Complex Matches

# TO RUN: elixir matching-on-lists.exs


IO.puts "To see some more complex pattern matches with the match operator we will use lists:"
IO.puts " - Lists can be defined with square brackets, like this:"
IO.puts "   [\"Humperdinck\", \"Buttercup\", \"Fezzik\"]"
IO.puts "   [\"milk\", \"butter\", [\"iocane\", 12]]"

IO.puts "\nLet's try now some more complex pattern matches, using lists...\n"

IO.puts "iex()> list = [1, 2, 3]"
# inspect needs to be used because Erlang VM sees numeric values as ASCII representations... more on this later in another chapter.
IO.inspect(list = [1, 2, 3])
IO.puts "# Elixir evaluates the match to true by performing the bound of [1, 2, 3] to variable list.\n"

IO.puts "iex(()> [var1, var2, var3] = list"
IO.inspect([var1, var2, var3] = list)
IO.puts "# [1, 2, 3] = [1, 2, 3] the match is true because Elixir sees that it has 3 variables in the left side and"
IO.puts "#  3 values on right side that can be made equal, therefore the match is true and values are assigned to the"
IO.puts "#  variables on the left side and Elixir calls this:"
IO.puts "#   - Process Pattern Matching\n"

IO.puts "iex()> var1"
IO.write(var1)
IO.puts " # As expected it holds the first value on the list."

IO.puts "iex()> var2"
IO.write(var2)
IO.puts " # As expected it holds the second value on the list."

IO.puts "iex()> var3"
IO.write(var3)
IO.puts " # As expected it holds the third value on the list."

IO.puts "\nSo Elixir is a magic potion, do you remember eh...\n"

IO.puts "Another Example...\n"

IO.puts "iex()> [var1, 1, var2] = list"
IO.inspect([var1, 2, var2] = list)
IO.puts "# It is able to succeed because left and right hand side can be made with same values and structure:"
IO.puts "# [1, 2, 3] = [1, 2, 3]\n"

IO.puts "iex()> var1"
IO.write(var1)
IO.puts " # As expected it holds the first value on the list."

IO.puts "iex()> var2"
IO.write(var2)
IO.puts " # As expected it holds the second value on the list."


IO.puts "\nA failure Example...\n"
IO.puts "iex()> [var1, 1, var2] = list"
IO.puts "# [1, 1, 3] = [1, 2, 3] This match will return false, therefore not setting variables and throwing an exception"
IO.puts "  because left side can't be made the same of right side."
IO.inspect([var1, 1, var2] = list)

# Will not run once an error will be raise in the previous match and I get ride of the warnings saying the vars are
#  note being used when I run this script
IO.puts(var1)
IO.puts(var2)
