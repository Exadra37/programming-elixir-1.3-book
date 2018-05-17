# Chapter -> Pattern Matching: Exercise 2

IO.write "
Let's see if my evaluation are correct or wrong for the following pattern matches:
  - [foo, bar, foo] = [1, 2, 3] -> I bet it will fail
  - [foo, bar, foo] = [1, 1, 2] -> Another failure.
  - [foo, bar, foo] = [1, 2, 1] -> This will succeed.

# Applying what we learn about variables in Pattern Matching we know that they will only bind once, therefore the below
#  pattern will evaluate to [1, 2, 1] = [1, 2, 3] and a Match Error will be raised by Elixir, once last element in the
#  right side list does not match the one in the left list.
iex()> [foo, bar, foo] = [1, 2, 3]
** (MatchError) no match of right hand side value: [1, 2, 3]
    exercise-2.exs:13: (file)
    (elixir) lib/code.ex:370: Code.require_file/2
"
# uncomment below line to confirm the above output
#IO.inspect([foo, bar, foo] = [1, 2, 3])

IO.write "
# [1, 1, 1] = [1, 1, 2] once more both sides differ because a variable is only assigned in the first occurrence on
#  the pattern and all subsequent occurrences will use is value.
iex()> [foo, bar, foo] = [1, 1, 2]
** (MatchError) no match of right hand side value: [1, 1, 2]
    exercise-2.exs:23: (file)
    (elixir) lib/code.ex:370: Code.require_file/2
"
# uncomment below line to confirm the above output
#IO.inspect([foo, bar, foo] = [1, 1, 2])

IO.write "
# [1, 2, 1] = [1, 2, 1] will match because both sides are the same.
iex()> [foo, bar, foo] = [1, 2, 1]
"
IO.inspect([foo, bar, foo] = [1, 2, 1])

IO.puts "
YEEEESSS... All my evaluations about the Pattern Matching are correct :)
"
