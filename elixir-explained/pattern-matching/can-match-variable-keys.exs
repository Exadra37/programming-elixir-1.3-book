# Chapter 8
#  > Maps, Keyword Lists, Sets and Structs
#  > Pattern Matching and Updating Maps
#  > Pattern Matching Cannot Bind Keys
# Programming Elixir 1.6 on Page 87

defmodule CannotBindKeys do


  @doc """
  # Pattern Matchingg Cannot Bind Keys

  While is possible to extract a value from a key during Pattern Matching,
  binding a value into a key of a Map will thrown a compile error.
  """
  def example() do
    %{ 1 => state } = %{ 1 => :ok, 2 => :error }
    IO.inspect state

    # this will throw the compile error, because we cannot assign `:ok` to
    # the key `item`.
    #%{ item => :ok } = %{ 1 => :ok, 2 => :error }
    IO.puts "\n#%{ item => :ok } = %{ 1 => :ok, 2 => :error }"
    IO.puts "Look for the above line in the code and uncomment it and recompile the code to see the error."
  end
end

  # data = %{ name: "Dave", state: "TX", likes: "Elixir" }

  # for key <- [ :name, :likes ] do
  #   %{ ^key => value } = data
  #   IO.inspect value
  # end

