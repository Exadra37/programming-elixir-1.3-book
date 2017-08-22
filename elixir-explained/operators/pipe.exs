# Chapter 6 > Modules and Named Functions > Pipe Operator
# Page 56

defmodule Pipe do

  def docs do

    IO.puts """

    PIPE OPERATOR

      Allows us to build a pipeline of functions, where the result of the last one is passed to next in the pipeline
      as the first argument.

      The best of all is that it makes much more easier to read and reason about our code.

      So Instead of this:

        → report = prepare_report(sales_tax(Orders.for_customers(DB.find_customers), 2016))

      We can go for a pipeline:

        → report = DB.find_customers() |> Orders.for_customers() |> sales_tax(2016) |> prepare_report()


      In a glance I can read and understand what is going on in the pipeline, where in the traditional approach I need
      to stop, think and digest that from inside to the outside in order I can understand it.


    ---> IEX Examples:

        iex> c "elixir-explained/operators/pipe.exs"
        [Pipe]

        iex> Pipe.double_this(12)
        .... # output to big, just run an read it.

        iex> Pipe.double_it(21)
        .... # output to big, just run an read it.

    """

  end

  def double_this(value) do

    IO.puts """

      Pipe Operator Example:

      value |> multiply(2) |> print_result()

    """

    value |> multiply(2) |> print_result()
  end

  def double_it(value) do

    IO.puts """

      Pipe Operator Example:

      value
      |> multiply(2)
      |> print_result()

    """

    value
    |> multiply(2)
    |> print_result()

  end

  defp multiply(value, by_value) do

    result = value * by_value

    IO.puts """
      Functions Arity:
        →  multiply/2 -> multiply(#{value}, #{by_value})
        →  print_result/1 -> print_result(#{result})

      The first argument "#{value}" passed to multiply/2 was given by the pipe operator, while the second argument "#{by_value}"
      was declared in the function call:
        → |> multiply(#{by_value})

      This means that in a pipeline a function will always take his first argument from the previous pipe result.

    """

    result

  end

  defp print_result(result) do

    IO.puts """

      >>> Oh by the way the result of doubling is: #{result} <<<

    """

  end

end
