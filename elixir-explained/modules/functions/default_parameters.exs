# Chapter 6 > Modules and Named Functions > Functions Call and Pattern Matching > Default Parameters
# Page 53

defmodule DefaultParameters do

  # This is from the book but NEVER use default parameters like this or better never use them at all.
  # But if you really need them ALWAYS use them as the last parameters in the function declaration.
  def function(p1, p2 \\ 2, p3 \\ 3, p4) do
    [p1, p2, p3, p4]
  end

  def docs() do

    IO.puts """

    Default Parameters

      In Elixir default parameters can be very tricky due to Pattern matching in the function Parameters, where they are
      evaluated from left to right.

      Anyway using default parameters is not the best solution to achieve SOLID and Clean Code, therefore we must use them
      only on last resort.

      In my opinion using them is a code smell and more often than note a bad design architecture decision.

      So as we can see by the following examples it can be easily messy and confusing to use them...


    ---> IEX Examples:

      iex> c "elixir-explained/modules/functions/default_parameters.exs"
      [DefaultParameters]

      iex> DefaultParameters.function("a", "b")
      ["a", 2, 3, "b"]

      iex> DefaultParameters.function("a", "b", "c")
      ["a", "b", 3, "c"]

      iex> DefaultParameters.function("a", "b", "c", "d")
      ["a", "b", "c", "d"]

    """

  end

end
