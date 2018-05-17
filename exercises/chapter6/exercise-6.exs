# Chapter 6 > Modules and Named Functions > Functions Call and Pattern Matching > Exercise 6
# Page 55

# Solution to Exercise: https://forums.pragprog.com/forums/322/topics/Exercise:%20ModulesAndFunctions-6
defmodule Chop do

  # only this function should be public
  def guess(actual, start_range..end_range) do

    current_guess = div(start_range + end_range, 2)

    IO.puts("Is it #{current_guess}")

    guess(actual, start_range..end_range, current_guess)

  end

  # this function should be private, but was not learned yet in the book
  def guess(actual, start_range..end_range, current_guess) when current_guess === actual do
    current_guess
  end

  # this function should be private, but was not learned yet in the book
  def guess(actual, start_range..end_range, current_guess) when current_guess > actual do
    guess(actual, start_range..current_guess - 1)
  end

  # this function should be private, but was not learned yet in the book
  def guess(actual, start_range..end_range, current_guess) when current_guess < actual do
    guess(actual, current_guess + 1..end_range)
  end

end
