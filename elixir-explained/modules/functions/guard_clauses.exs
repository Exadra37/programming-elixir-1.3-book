# Chapter 6 > Modules and Named Functions > Functions Call and Pattern Matching > Guard Clauses
# Page 52

defmodule Guard do

  def what_is(x) when is_number(x) do
    IO.puts "#{x} is a number"
  end

  def what_is(x) when is_list(x) do
    IO.puts "#{inspect(x)} is a list"
  end

  def what_is(x) when is_atom(x) do
    IO.puts "#{x} is an atom"
  end

  def docs() do

    IO.puts """

    GUARD CLAUSES

      Attaching guard clauses to a function definition will give us the ability to define predicates to filter further
      when the function is matched by Elixir for execution.

      Elixir first performs the usual pattern matching on the function parameters followed by evaluation of any defined
      guard clauses and only executes the function body if at least one of the guard clauses is true.

      The Elixir expressions we can use in Guard clauses are limited to a subset that we can found at http://elixir-lang.org/getting-started/case-cond-and-if.html#expressions-in-guard-clauses.

      Some Erlang expressions can also be used as per documentation at http://erlang.org/doc/man/erlang.html#is_atom-1.


    ---> Guard cause signature:

      def foo(params) when condition1 do
        # code to execute here
      end

      def foo(params) when condition2 do
        # code to execute here
      end


    ---> IEX example:

      iex> c "elixir-explained/modules/functions/guard_clauses.exs"
      [Guard]

      iex> Guard.what_is(99)
      99 is a number
      :ok

      iex> Guard.what_is(:cat)
      cat is an atom
      :ok

      iex> Guard.what_is([1, 2, 3])
      [1, 2, 3] is a list
      :ok

      iex> Guard.what_is({1, 2, 3})
      ** (FunctionClauseError) no function clause matching in Guard.what_is/1
      elixir-explained/modules/guard_clauses.exs:6: Guard.what_is({1, 2, 3})


    ---> Conclusion

      As we can see when Elixir doesn't find a match will throw a Function Clause Error.

      This error can be prevented if we add another function definition without any Guard clause as the last function
      in the module. Remember Elixir executes the code in the order it reads the module from top to bottom.

    """

  end

end
