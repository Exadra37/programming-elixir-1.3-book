# CHAPTER -> Exercise: Pattern Matching

# TO RUN: elixir exercise-1.exs

IO.puts "Open your Elixir console: iex"
IO.puts "Try this Pattern Matches and explain for your self in a README why they fail or pass:"
IO.puts ""

# This patterns matchs can make left equal to the right side therefore it will match and bind the value to the variable
IO.puts "iex> list = [1, 2, 3]"
IO.puts "[1, 2, 3]"
IO.puts ""

# This looks weird once it will violate the Immutability of the variable, once is value and type changes.
#
# Some discussions about:
#  - https://stackoverflow.com/questions/29967086/are-elixir-variables-really-immutable
#  - https://www.reddit.com/r/elixir/comments/2o1sax/how_is_elixir_immutable_if_it_lets_you_mutate/
#
# So as per this response https://stackoverflow.com/a/30000838 the Elixir pin operator(^) must be used to avoid
#  the below to match and change the variable list value, making it mutable.
#
# Check last example to see how to guard immutability in an Elixir variable when doing Pattern Matching.
IO.puts "iex> list = 4"
IO.puts "4"
IO.puts ""

# Left side matches right side(4 = 4), once the list as now the value 4 as per above example
IO.puts "iex> 4 = list"
IO.puts "4"
IO.puts ""

# Left side and right side differ in number of arguments(var1, var2 = [1, 2, 3]), therefore pattern matching will
#  return an error.
IO.puts "iex> [var1, var2] = [1, 2, 3]"
IO.puts "** (MatchError) no match of right hand side value: [1, 2, 3]"
IO.puts ""

# Not surprise here, once the left side is variable it will be assigned the value in the left side.
IO.puts "iex> var1  = [[1, 2, 3]]"
IO.puts "[[1, 2, 3]]"
IO.puts ""

# For me in a first look this one should fail but it succeeds.
#
# The reason it matches is that the right hand side is a list composed by 1 item(another list), therefore can match
#  left hand side that is also composed by a list with 1 item, the 'var1' variable, that will be assigned with the
#  the list [1,2,3] from the right hand side.
#
# To remember that variables on the left hand side are never resolved to their previous value, unless they are
#  prefixed with char '^'.
#
# If my understanding is wrong, please open an issue and care to explain in detail why ;)
IO.puts "iex> [var1] = [[1, 2, 3]]"
IO.puts "[[1, 2, 3]]"
IO.puts ""

# I was expecting a success and got a failure on this one and I failed here due to the same pitfall of previous one,
#  by assuming that the variable 'var1' was being resolved to their previous value before the both sides would be
#  pattern matched.
#
# The reason it matches is that in the right hand side exists 3 items inside the inner list, but on the left side
#  the inner list only has 1 item, the 'var1' variable.
#
# For the pattern match to succeed it would be necessary to be like [[var1, var2, var3]] = [[1, 2, 3]] or [^var1] = [[1, 2, 3]]
IO.puts "iex> [[var1]] = [[1, 2, 3]]"
IO.puts "** (MatchError) no match of right hand side value: [[1, 2, 3]]"
IO.puts ""

# Proving my assumptions on the previous pattern match explanation
IO.puts "iex> [^var1] = [[1, 2, 3]]"
IO.puts "[[1, 2, 3]]"
IO.puts ""
IO.puts "iex> [[var1, var2, var3]] = [[1, 2, 3]]"
IO.puts "[[1, 2, 3]]"
IO.puts ""

# Elixir Pin Operator(^):
#  - https://elixir-lang.org/getting-started/pattern-matching.html#the-pin-operator
#
# The Elixir pin operator(^) must be used when doing Pattern Matching to guard the immutability of the variable.
#
# Using this time the ^ prevents pattern matching to succeed thus protecting the variable to be mutable.
IO.puts "iex> var = 2"
IO.puts "iex> ^var = 4"
IO.puts "** (MatchError) no match of right hand side value: 4"
IO.puts ""
