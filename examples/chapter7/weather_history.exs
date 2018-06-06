# Chapter 7 > Lists and Recursion > More Complex List Patterns > Lists of Lists
# Programming Elixir 1.6 on Page 78

defmodule WeatherHistory do

  @moduledoc """
  # WEATHER HISTORY

  This module is an example on how we can pattern matching in a more complex
  way when performing recursion on a list composed of other lists.

  We will see the join operator "|" being used to support pattern matching on
  multiple values at is left in order to allow us to extract more than 1 value
  from the head of the list while at same time we extract the entire head.
  """

  def for_location([], _target_loc) do
    []
  end

  @doc """
  ## Pattern Matching on Multiple Values in the Head of a List

  When the head of a List is another list we can pattern macht on any of is
  values in order to extract them while at same time we also extract the head.

  #### Example

  iex> WeatherHistory.for_location([[1366225622, 26, 15, 0.125]], 26)
  [[1366225622, 26, 15, 0.125]]
  """
  def for_location([ head = [_, target_loc, _, _] | tail ], target_loc) do
    [ head | for_location(tail, target_loc) ]
  end

  def for_location([ _ | tail ], target_loc) do
    for_location(tail, target_loc)
  end

  def test_data() do
    [
      [1366225622, 26, 15, 0.125],
      [1366225622, 27, 15, 0.45],
      [1366225622, 28, 21, 0.25],
      [1366229222, 26, 19, 0.081],
      [1366229222, 27, 17, 0.468],
      [1366229222, 28, 15, 0.60],
      [1366232822, 26, 22, 0.095],
      [1366232822, 27, 21, 0.05],
      [1366232822, 28, 24, 0.03],
      [1366236422, 26, 17, 0.025],
    ]
  end

end
