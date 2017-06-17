# Chapter 4 > Elixir Basics > Maps


IO.write "
MAPS

Maps are a collection of key/value pairs in the form of %{key => value, key => value}

The keys can be:
    * strings
    * expression strings
    * tuples
    * atoms

So a Map can contain any of the key types listed above.

The difference between Maps and Keywords lists is that they allow more than one entry for the same key.

Maps should be used when we want an associative array and Keyword Lists to pass around options or command line
 parameters.

Maps are very efficient as they grow and can be used in Pattern Matching.
"

IO.write "
# Keys as strings
iex()> states = %{\"AL\" => \"Alabama\", \"WI\" => \"Wisconsin\"}
"
IO.inspect(states = %{"AL" => "Alabama", "WI" => "Wisconsin"})

IO.write "
# Keys as Tuples
iex()> responses = %{{:error, :enoent} => :fatal, {:error, :busy} => :retry}
"
IO.inspect(responses = %{{:error, :enoent} => :fatal, {:error, :busy} => :retry})


IO.write "
# Keys as atoms
iex()> colors = %{:red => 0xff0000, :green => 0x00ff00, :blue => 0x0000ff}
"
IO.inspect(colors = %{:red => 0xff0000, :green => 0x00ff00, :blue => 0x0000ff})

IO.write "
# Keys as atoms
# When the Map only contains atoms as keys we can simplify how we write them.
iex()> colors = %{red: 0xff0000, green: 0x00ff00, blue: 0x0000ff}
"
IO.inspect(colors = %{red: 0xff0000, green: 0x00ff00, blue: 0x0000ff})

IO.write "
# Keys types mixed in same Map
iex()> %{\"one\" => 1, :two => 2, {1, 1, 1} => 3}
"
IO.inspect(%{"one" => 1, :two => 2, {1, 1, 1} => 3})

IO.write "
# Keys as expressions strings
iex()> name = \"José Valim\"
iex()> %{String.downcase(name) => name}
"
IO.puts(name = "José Valim")
IO.inspect(%{String.downcase(name) => name})


IO.puts "

ACCESSING A MAP

A Map can be accessed using is key inside square brackets like map_name[\"key_name\"].

Dot notation access is also possible when the keys are Atoms.
"

IO.write "
# Key as a string.
# Accessing a existing key in the states Map we have created in a previous example.
iex()> states[\"AL\"]
"
IO.inspect(states["AL"])

IO.write "
# Key as a string.
# Trying to access a non existing key in states Map will return nil.
iex()> states[\"TX\"]
"
IO.inspect(states["TX"])

IO.write "
# Key as a Tuple
# We will use the responses Map we created previously.
iex()> responses[{:error, :busy}]
"
IO.inspect(responses[{:error, :busy}])

IO.write "
# Key as a Atom.
# Using square bracket notation to access previously created Map colors.
iex()> colors[:red]
"
IO.inspect(colors[:red])

IO.write "
# Key as a Atom.
# Using dot notation to access previously created Map colors.
iex()> colors.red
"
IO.inspect(colors.red)

IO.write "
# Key as a Atom.
# Using dot notation to access non existing key on previously created Map colors.
# A Key Error will be raised.
iex()> colors.orange
"
IO.inspect(colors.orange)
