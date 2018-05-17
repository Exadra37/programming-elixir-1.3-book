# Chapter 5 > Anonymous Functions > Exercises > Fizz Buzz Warm Up 2


IO.puts "
Exercise:Functions-3 on page 41

Write a anonymous function that:
    → accepts 1 integer(n)
    → calls the function fizz_buzz/3 from previous exercise:
        → first argument must be rem(n, 3)
        → second argument must be rem(n, 5)
        → third argument must be accepted integer(n)
    → invoke it 7 times with values from 10 to 16 inclusive.
    → returned results must be:
        → Buzz
        → 11
        → Fizz
        → 13
        → 14
        → FizzBuzz
        → 16

# fizz_buzz from previous exercise: exercises/anonymous-functions/fizz_buzz_warm_up.exs
fizz_buzz = fn
                (0, 0, _) -> \"FizzBuzz\"
                (0, _, _) -> \"Fizz\"
                (_, 0, _) -> \"Buzz\"
                (_, _, third) -> third
            end

# the new anonymous function:
walk_fizz_buzz = fn (value) -> fizz_buzz.(rem(value, 3), rem(value, 5), value) end
"

fizz_buzz = fn
                (0, 0, _) -> "FizzBuzz"
                (0, _, _) -> "Fizz"
                (_, 0, _) -> "Buzz"
                (_, _, third) -> third
            end

walk_fizz_buzz = fn (value) -> fizz_buzz.(rem(value, 3), rem(value, 5), value) end

IO.puts "
Walking 7 time through the fizz_buzz/3 by calling walk_fizz_buzz/1:

IO.puts(walk_fizz_buzz.(10)) # Buzz
IO.puts(walk_fizz_buzz.(11)) # 11
IO.puts(walk_fizz_buzz.(12)) # Fizz
IO.puts(walk_fizz_buzz.(13)) # 13
IO.puts(walk_fizz_buzz.(14)) # 14
IO.puts(walk_fizz_buzz.(15)) # FizzBuzz
IO.puts(walk_fizz_buzz.(16)) # 16

Output:
"
IO.puts(walk_fizz_buzz.(10)) # Buzz
IO.puts(walk_fizz_buzz.(11)) # 11
IO.puts(walk_fizz_buzz.(12)) # Fizz
IO.puts(walk_fizz_buzz.(13)) # 13
IO.puts(walk_fizz_buzz.(14)) # 14
IO.puts(walk_fizz_buzz.(15)) # FizzBuzz
IO.puts(walk_fizz_buzz.(16)) # 16

IO.puts "
Elixir is really powerful, allowing us to write all this FizzBuzz logic without using 1 single if statement :)

Almost completed the solution for original the FizzBuzz exercise, just need to invoke it 100 times or do some recursion ;)

For now this exercise doesn't require more, therefore later on the book another exercise should come up to complete the
FizzBuzz challenge.
"
