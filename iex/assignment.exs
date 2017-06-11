# CHAPTER: Assignment... I do not think it means what you think it means.

# TO RUN: elixir assignment.exs
IO.puts "If we try the below operation in IEX we have done a pure variable assignment..."
IO.puts "iex()> a = 1"
IO.puts(a = 1)
IO.puts "So the result of assignment is 1. Let's now perform a sum on it: a + 3"
IO.puts(a + 3)
IO.puts "Result is 4 as we expect... Are you sure of that???"
IO.puts "Let's try to output the value of variable: a"
IO.puts(a)
IO.puts "WTF now the value got back to the initial assignment value of 1..."
IO.puts "Calm down dude... Remember Elixir is a magic potion, therefore things work different ;)"
IO.puts "The truth is that in Elixir the equal sign(=) is not an assignment operator, instead is called a match operator."
IO.puts "This means that if the left side is a variable than Elixir will perform a match 'true' and binds the left hand side to the variable."
IO.puts "Ok I know by this time your are saying... common that stills an assignment!!!"
IO.puts "So let's prove that we are doing pattern matching when using the equal sign operator..."
IO.puts "Let's execute: var1 = 3"
IO.puts (var1 = 3)
IO.puts "Let's execute: 3 = var1"
IO.puts (3 = var1)
IO.puts "Result is 3 because the matches succeeds in both operations."
IO.puts "In first operation it succeeds because it binds the value  "
IO.puts "Now lets's try: 4 = var1"
IO.puts "It throws an error because left hand side is 4 and right side is 3, the value of var1 (4 = 3)."
IO.puts (4 = var1)
