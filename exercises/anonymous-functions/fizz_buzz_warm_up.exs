# Chapter 5 > Anonymous Functions > Exercises > Fizz Buzz Warm Up


IO.puts "
Exercise:Functions-2 on page 41

Fizz Buzz Warm Up

Write a function that takes 3 arguments and returns:
    → FizzBuzz - if first 2 arguments are 0.
    → Fizz - if the first argument is 0.
    → Buzz - if the second argument is 0.
    → otherwise returns third argument.
"

fizz_buzz = fn
                (0, 0, _) -> "FizzBuzz"
                (0, _, _) -> "Fizz"
                (_, 0, _) -> "Buzz"
                (_, _, third) -> third
            end

IO.puts "
# FizzBuzz
IO.puts(fizz_buzz.(0, 0, 3))"
IO.puts(fizz_buzz.(0, 0, 3))

IO.puts "
# Fizz
IO.puts(fizz_buzz.(0, 2, 3))"
IO.puts(fizz_buzz.(0, 2, 3))

IO.puts "
# Buzz
IO.puts(fizz_buzz.(1, 0, 3))"
IO.puts(fizz_buzz.(1, 0, 3))

IO.puts "
# returns third argument
IO.puts(fizz_buzz.(1, 2, 3))"
IO.puts(fizz_buzz.(1, 2, 3))

IO.puts "
Daamm... Elixir makes so simple to solve what would be a much more complex exercise in other OOP languages ;)

This is not the original FizzBuzz exercise...

To read about the original one visit http://c2.com/cgi/wiki?FizzBuzzTest
"
