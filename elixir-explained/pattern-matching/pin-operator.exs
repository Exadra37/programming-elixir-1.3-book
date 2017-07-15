# Chapter -> Variables Bind Once (per Match)
#
# this is a continuation of the chapter started on variables-bind-once-per-match.exs

# Elixir Pin Operator(^) official documentation:
#  - https://elixir-lang.org/getting-started/pattern-matching.html#the-pin-operator

IO.puts "iex()> foo = 1"
IO.puts(foo = 1)
IO.puts "iex()> foo"
IO.write(foo)
IO.puts " # As expected it printed 1 as is value."

IO.puts "iex()> foo = 2"
IO.puts(foo = 2)
IO.puts "iex()> foo"
IO.write(foo)
IO.puts " # As expected it printed 2 as is value."

IO.puts "
Elixir allows variables to be reassigned in subsequent matches, but we can prevent this from happening by
using the Pin Operator(^).
"

IO.puts "
# [2 = 3] is how Pattern Matching will evaluate it when the Pin Operator is used, therefore failing the match
#  and raising the Match Error.
iex()> ^foo = 3
** (MatchError) no match of right hand side value: 3
    pin-operator.exs:23: (file)
    (elixir) lib/code.ex:370: Code.require_file/2
"
# Uncomment the following line to confirm the Match Error.
# IO.puts(^foo = 3)

IO.write "
# [2, 2, 3] = [1, 2, 3] same Match Error happens when using the variable foo as an element of a list, because his
#  value is 2, therefore the first element in right and left side will not match.
iex()> [^foo, 2, 3] = [1, 2, 3]
"
IO.inspect([^foo, 2, 3] = [1, 2, 3])
