# Chapter 6 > Modules and Named Functions

IO.puts "
To structure a program in Elixir we structure it in Modules, that are composed of named functions.

---> Module Signature

defmodule Signature do
  def named_function(argument) do
    argument
  end
end


---> Compiling this module in iex

iex> c \"elixir-explained/modules/signature.exs\"

To structure a program in Elixir we structure it in Modules, that are composed of named functions.


[Signature]



---> Executing the Module in iex

iex> Signature.named_function(\"argument\")
\"argument\"
"

defmodule Signature do
  def named_function(argument) do
    argument
  end
end
