# Chapter 6 > Modules and Named Functions > Name Spaces
# Page 59

defmodule OuterModule do

  defmodule InnerModule do

    def inner_function() do
      IO.puts "Inside the Inner Module function..."
    end

  end

  def outer_function1() do
    IO.puts "Inside Outer Module function 1..."
  end

  def outer_function2() do
    outer_function1()
    IO.puts "Inside Outer Module function 2..."
    InnerModule.inner_function()
  end

  def docs do

    IO.puts """

    Modules Name Spaces

      In elixir we can organize our code under a name space, the module name.

      Modules can be used to encapsulate:
        → Named Functions
        → Macros
        → Structs
        → Protocols
        → Other Modules

      To access a Module function from outside of it we need to use the full qualified name for the module:
        → ModuleName.funtion_name()
        → OuterModule.InnerModule.function_name()

      As we can see the full qualified names to access a Inner Module is separated by dots, but the dots are only a
      convention.

      So this means we can use dots to define a name of a top level Module that doesn't contain Inner Modules, therefore
      having a top level Module name as `Orders.History` compiles without errors and does not mean that Orders contains
      inside the History module or is related to another top level Module called only `History`.


    ---> IEX Example:

      iex> c "elixir-explained/modules/namespaces.exs"
      [History, Orders.History, OuterModule, OuterModule.InnerModule]

      iex> OuterModule.outer_function1()
      Inside Outer Module function 1...
      :ok

      iex> OuterModule.outer_function2()
      Inside Outer Module function 1...
      Inside Outer Module function 2...
      Inside the Inner Module function...
      :ok

      iex> OuterModule.InnerModule.inner_function()
      Inside the Inner Module function...
      :ok

      # will throw an error because we have not used the full qualified name to access the Inner Module.
      iex> InnerModule.inner_function()
      ** (UndefinedFunctionError) function InnerModule.inner_function/0 is undefined (module InnerModule is not available)
      InnerModule.inner_function()

      iex> Orders.History.report()
      Inside top level Module Order.History.report/0 ...
      :ok

      iex> History.report()
      Inside top level Module History.report/0 ...
      :ok

    """

  end

end


defmodule Orders.History do

  def report() do
    IO.puts "Inside top level Module Order.History.report/0 ..."
  end

end

defmodule History do

  def report() do
    IO.puts "Inside top level Module History.report/0 ..."
  end

end
