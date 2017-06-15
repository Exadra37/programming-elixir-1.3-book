# Chapter -> Pattern Matching: Exercise 3

IO.write "
Considering that variable foo is bind to value 2:

    - [foo, bar, foo] = [1, 2, 3] -> failure
    - [foo, bar, foo] = [1, 1, 2] -> failure
    - foo = 1 -> success
    - ^foo = 2 -> failure
    - ^foo = 1 -> success
    - ^foo = 2 - foo -> success
"

IO.write "
# [1, 2, 1] = [1, 2, 3] Don't let the remark that foo is already bind to value 2 to trap you, once the Pin Operator is
#  not being used in the Pattern Match.
# Once bothh sides of the pattern are not matching a Match Error is raised.
iex()> [foo, bar, foo] = [1, 2, 3]
** (MatchError) no match of right hand side value: [1, 2, 3]
    exercise-3.exs:17: (file)
    (elixir) lib/code.ex:370: Code.require_file/2
"
# uncomment below line to confirm above output
#IO.inspect([foo, bar, foo] = [1, 2, 3])

IO.write "
# [1, 1, 1] = [1, 1, 2] Once more the Pin Operator is not being used, therefore foo is bind to value 1 in the first
#  element of the list and maintains this value in subsequent occurrences of foo, this is why a Match Error is raised
#  when the match fails in the 3 element.
iex()> [foo, bar, foo] = [1, 1, 2]
** (MatchError) no match of right hand side value: [1, 1, 2]
    exercise-3.exs:26: (file)
    (elixir) lib/code.ex:370: Code.require_file/2
"
# uncomment below line to confirm above output
#IO.inspect([foo, bar, foo] = [1, 1, 2])

IO.write "
# variable foo will bind to value 1.
iex()> foo = 1
"
IO.puts(foo = 1)

IO.write "
# Pin Operator is being used on the variable foo, therefore value 2 on the right side can't bind to foo and foo has
#  value 1 that is different from the value 2 on the right, what makes the Pattern Matching fail and raises a Match Error.
iex()> ^foo = 2
** (MatchError) no match of right hand side value: 2
    exercise-3.exs:40: (file)
    (elixir) lib/code.ex:370: Code.require_file/2
"
# uncomment below line to confirm above output
#IO.puts(^foo = 2)

IO.write "
# 1 = 1 is the result of the Pattern Matching evaluation, once the variable foo as the Pin Operator, instead of rebind
#  foo to the value on the right side of the pattern, foo current value 1 is used and the Pattern Matching will succeed.
iex()> ^foo = 1
"
IO.puts(^foo = 1)

IO.write "
# 1 = (2 - 1) similar to the previous example, with the difference that subtraction operation is evaluated first on the
#  right side of the pattern, prior to both sides being compared.
# When using foo on the right side of the pattern the Pin Operator is not necessary to prevent rebind of the variable
#  foo, once that can only happen if the variable is on the left side without the Pin Operator, that is not the case in
#  current pattern.
# So once value of foo is 1, subtracting it to 2, gives us the value 1 on the right side of the pattern, that will match
#  the value 1 of foo in the left side of the pattern, allowing to the Pattern Matching to succeed.
iex()> ^foo = 2 - foo
"
IO.puts(^foo = 2 - foo)

IO.puts "
HOOOORAAYYY... Everything correct again, just like in Exercise 2.

I am feeling like I am starting to master Pattern Matching :)
"
