# Chapter 4 > Elixir Operators > Operators > In

IO.puts "
The In Operator:
	→ in 

Tests if a value is present in a enum:
	→ list
	→ range
	→ map
"

IO.puts "
iex> 2 in [1, 2, 3]"
IO.inspect(2 in [1, 2, 3])

IO.puts "
iex> 3 in 1..10"
IO.inspect(3 in 1..10)

IO.puts "
# To use the 'in' operator against a Map the value must be a tuple {key, value}
iex> {\"PT\", \"Portugal\" in %{\"UK\" => \"United Kingdom\", \"PT\" => \"Portugal\"}"
IO.inspect({"PT", "Portugal"} in %{"UK" => "United Kingdom", "PT" => "Portugal"})

IO.puts "
# with only the key the test returns false
iex> \"PT\" in %{\"UK\" => \"United Kingdom\", \"PT\" => \"Portugal\"}"
IO.inspect("PT" in %{"UK" => "United Kingdom", "PT" => "Portugal"})

IO.puts "
# with only the key value the test also returns false
iex> \"Portugal\" in %{\"UK\" => \"United Kingdom\", \"PT\" => \"Portugal\"}"
IO.inspect("Portugal" in %{"UK" => "United Kingdom", "PT" => "Portugal"})

IO.puts "
# We can't use the 'in' operator against a Tuple or a Protocol Undefined Error will be raised
iex> 1 in {1, 2, 3}"
IO.inspect(1 in {1, 2, 3})
