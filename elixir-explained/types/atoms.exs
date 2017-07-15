# Chapter 4 > Elixir Basics > Value Types > Atoms

IO.puts "
Atoms are constants and their name is their value. 

We write them preceding the name by a colon, like :some_name.

Atoms:
	→ are a sequence of letters, digits, underscores and @ signs
	→ can end with a exclamation or interrogation point.
	→ may constain any characther when enclosed in double quotes.

Some examples:
"

IO.puts "iex> :fred"
IO.inspect(:fred)

IO.puts "
iex> :is_binary?"
IO.inspect(:is_binary?)

IO.puts "
iex> :var@2"
IO.inspect(:var@2)

IO.puts "
iex> :<>"
IO.inspect(:<>)

IO.puts "
iex> :==="
IO.inspect(:===)

IO.puts "
iex> :\"func/3\""
IO.inspect(:"func/3")

IO.puts "
iex> :\"long john silver\""
IO.inspect(:"long john silver")

IO.puts "
iex> is_atom :foo"
IO.inspect(is_atom :foo)

IO.puts "
iex> i :foo
Term
  :foo
Data type
  Atom
Reference modules
  Atom
Implemented protocols
  IEx.Info, String.Chars, List.Chars, Inspect
"
