# Chapter 6 > Modules and Named Functions > Functions Call and Pattern Matching > Exercise 6
# Page 55


defmodule Chop do

  def guess(actual, start_range..end_range, current_guess) when current_guess === 0 do
    {actual, start_range, end_range}
  end

  def guess(actual, start_range..end_range, current_guess) when actual === current_guess do
    current_guess
  end

  # 273, 1..500, 500 when 500 > 273
  def guess(actual, start_range..end_range, current_guess) when current_guess > actual do

    IO.inspect{actual, start_range, end_range, current_guess}

    # 500 - 1 = 499
    end_range = current_guess - 1

    # 273, 1..499
    guess(actual, start_range..end_range)

  end

  # 273, 1..499, 249 when 249 < 273
  def guess(actual, start_range..end_range, current_guess) when current_guess < actual do

    IO.inspect{actual, start_range, end_range, current_guess}

    # 249 + 1
    start_range = current_guess + 1

    # 273, 250..499
    guess(actual, start_range..end_range)

  end

  # 273, 1..1000
  # 273, 1..499
  # 273, 250..499
  def guess(actual, start_range..end_range) do

    # 1000 / 2 = 500
    # 499 / 2 = 249
    guess_it =   fn
                    (1, end_range) -> div(end_range, 2)
                    (start_range, end_range) -> (end_range - start_range) |> div(2)
                  end

    current_guess = guess_it.(start_range, end_range)
    # 500
    # 249
    IO.puts "->>> Guess <<<<"
    IO.inspect{start_range, end_range}
    IO.puts("Is it #{current_guess}")



    # 273, 1..500, 500
    # 273, 1..499, 249
    guess(actual, start_range..end_range, current_guess)

  end

end
