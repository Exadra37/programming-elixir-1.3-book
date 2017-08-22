# Chapter 6 > Modules and Named Functions > Directives for Modules > The Alias Directive
# Page 60


defmodule Alias do

  def scope(file) do

    alias My.Other.Module.{Parser, Runner}

    file
    |> Parser.parse()
    |> Runner.execute()

  end

  def docs do

    IO.puts """

    MODULE ALIAS DIRECTIVE

      The alias directive will allow as to create a short cut name to another Module.

      Can be useful to save on typing or to give a better name to the module in the current context.

      When the alias name given with `as` matches the last path in the Module name, than we can skip the `as` part.

      If the we need to alias 2 or more modules that share the same prefix than we short cut the aliases in the same line.


      The Alias Directive Syntax:

        Verbose:

          → alias My.Other.Module.Parser, as: Parser
          → alias My.Other.Module.Name, as: Runner


        Simple:

          → alias My.Other.Module.Parser
          → alias My.Other.Module.Name


        Shorter:

          → alias My.Other.Module.{Parser, Runner}


    ---> IEX Examples:

      iex> c "elixir-explained/modules/directives/alias.exs"
      [My.Other.Module.Runner, My.Other.Module.Parser, Alias]

      iex> Alias.scope("alias.exs")
      Parsing file alias.exs...
      Running file alias.exs...
      :ok

    """

  end

end

defmodule My.Other.Module.Parser do

  def parse(file) do
    IO.puts "Parsing file #{file}..."
    file
  end

end

defmodule My.Other.Module.Runner do

  def execute(file) do
    IO.puts "Running file #{file}..."
  end

end
