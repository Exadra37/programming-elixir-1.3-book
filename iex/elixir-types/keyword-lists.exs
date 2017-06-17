# Chapter 4 > Elixir Basics > Collection Types > Keyword Lists

IO.write "
Keyword Lists

They are like Lists, but with the addition of being composed by key/value pairs.
"

IO.write "
iex()> [name: \"Dave\", city: \"Dallas\", likes: \"Programming\"]
"
IO.inspect([name: "Dave", city: "Dallas", likes: "Programming"])


IO.write "
# Mixing a List with a Keyword List
iex()> [1, fred: q, dave: 2]
"
IO.inspect([1, fred: 1, dave: 2])
