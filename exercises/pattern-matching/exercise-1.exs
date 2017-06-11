# CHAPTER -> Exercise: Pattern Matching

# TO RUN: elixir exercise-1.exs

IO.puts "Open your Elixir console: iex"
IO.puts "Try this Pattern Matches and explain for your self in a README why they fail or pass:"
IO.puts ""

# This patterns matchs can make left equal to the right side therefore it will match and bind the value to the variable
IO.puts "iex(1)> list = [1, 2, 3]"
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
IO.puts "iex(2)> list = 4"
IO.puts "4"
IO.puts ""

# Left side matches right side(4 = 4), once the list as now the value 4 as per above example
IO.puts "iex(3)> 4 = list"
IO.puts "4"
IO.puts ""

# Left side and right side differ in number of arguments(var1, var2 = [1, 2, 3]), therefore pattern matching will
#  return an error.
IO.puts "iex(4)> [var1, var2] = [1, 2, 3]"
IO.puts "** (MatchError) no match of right hand side value: [1, 2, 3]"
IO.puts ""

# Not surprise here, once the left side is variable it will be assigned the value in the left side.
IO.puts "iex(4)> var1  = [[1, 2, 3]]"
IO.puts "[[1, 2, 3]]"
IO.puts ""

# For me in a first look this one should fail, but it seems that Pattern matching don't treat the left side
#  value [[1, 2, 3]] as a whole.
# It seems that will try to pattern matching first [1, 2, 3] to var1, thus assigning the value to it, making left and
#  right side look like ([[1, 2, 3]] = [[1, 2, 3]]), therefore succeed in the Pattern Matching.
#
# If my understanding is wrong, please open an issue and care to explain in detail why ;)
IO.puts "iex(5)> [var1] = [[1, 2, 3]]"
IO.puts "[[1, 2, 3]]"
IO.puts ""

# On the previous example at first I was expecting a failure and got a success and here I was expecting a success and
#  got a failure.
#
# The explanation goes to why the flip in the expected results of the Pattern Matching for this one goes in in the same
#  way the explanation for the previous example.
#
# So pattern matching will match var1 to [1, 2, 3], thus assigning the value to it and end up with a left side
#  different form the right side:
#   [[[1, 2, 3]]] = [[1, 2, 3]]
# Note the 3 squre brakets in the left side against 2 in right side, therefore unable to match here and throwing the error.
IO.puts "iex(6)> [[var1]] = [[1, 2, 3]]"
IO.puts "** (MatchError) no match of right hand side value: [[1, 2, 3]]"
IO.puts ""

# This output of the value of var1 was what made me to make the assumptions to justify my explanations for
#  the 2 previous examples.
IO.puts "iex(6)> var1"
IO.puts "[1, 2, 3]"
IO.puts ""


# Elixir Pin Operator(^):
#  - https://elixir-lang.org/getting-started/pattern-matching.html#the-pin-operator
#
# The Elixir pin operator(^) must be used when doing Pattern Matching to guard the immutability of the variable.
#
# Using this time the ^ prevents pattern matching to succeed thus protecting the variable to be mutable.
IO.puts "iex(7)> ^list = 4"
IO.puts "** (MatchError) no match of right hand side value: 4"
IO.puts ""
