# Chapter 6 > Modules and Named Functions > Functions Call and Pattern Matching > Exercise 5
# Page 51

defmodule Divisor do

  # The anchor solution for the GCD
  def gcd(x, 0) do
    x
  end

  # The recursive solution to calculate the GCD
  def gcd(x, y) do
    gcd(y, rem(x, y))
  end

  def docs do

    IO.puts """

    GREATEST COMMON DIVISOR

      This module aims to calculate the Greatest Common Divisor between two non negative integers.

    ---> Exercise 5 Description resume from page 51

      To calculate the the GCD we must take in consideration that when calling gcd(x, y) the result is x if y is zero,
      otherwise will be gcd(y, rem(x, y)).


    ---> The Implementation

      The way this module is solving the GCD, as per exercise instructions, seems to be called the Euclid's algorithm
      as  we can see in wikipedia https://en.wikipedia.org/wiki/Greatest_common_divisor

      Break down 1 - Calculate the GCD between 24 and 18:
        → (24, 18) -> (18, rem(24, 18))
        → (18, 6)  -> (6, rem(18, 6))
        → (6, 0)   -> 6 // end of recursion, once we match the anchor solution, that will return us the GCD.

      Break down 2 - Calculate GCD with same numbers provided in inverse order:
        → (18, 24) -> (24, rem(18, 24))
        → (24, 18) -> (18, rem(24, 18))
        → (18, 6)  -> (6, rem(18, 6))
        → (6, 0)   -> 6 // end of recursion, once we match the anchor solution, that will return us the GCD.

      So as we can see on break down 2, by inverting the order we provide the numbers to Divisor.gcd(), providing the
      first number as the lowest, it will add only one more step to the execution flow, the first step, reaming all other
      steps exactly the same as on the break down 1.


    ---> IEX examples:

      iex> c "exercises/modules-and-functions/exercise-5.exs"
      [Divisor]

      iex> Divisor.gcd(24, 18)
      6

      iex> Divisor.gcd(18, 24)
      6


    ---> Notes

      This module aim is to calculate the GCD between positive numbers, but no validation on the input is performed,
      once we have not learned yet how to do that in this book.

    """

  end

end
