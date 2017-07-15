# Chapter 4 > Elixir Basics > Operators > Join

IO.puts "
Join Operators
	→ <> # concatenates binaries or strings
	→ ++ # concatenates 2 lists
	→ -- # removes elements from a list by returning another list without them
"

IO.puts "
iex> \"Hello\" <> \" World\""
IO.inspect("Hello" <> " World")

IO.puts "
iex> [\"Hello\", \"World\"] ++ [\"Learning\", \"Elixir\"]"
IO.inspect(["Hello", "World"] ++ ["Learning", "Elixir"])

IO.puts "
iex> [\"Hello\", \"World\"] -- [\"World\"]"
IO.inspect(["Hello", "World"] -- ["World"])
