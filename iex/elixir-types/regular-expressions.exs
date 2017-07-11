# Chapter 4 > Elixir Basics > Value Types > Regular Expressions

IO.puts "
Regular Expressions in Elixir follow the PCRE standard, that is the same as having a PERL 5 compatible regexes.

Regular Expressions takes the forms:
	→ ~r{regex}
	→ ~r{regex}options

The delimeters used {} are for convenience, but any other nonalphanumeric characther can be used, like the traditional /.

We will need to use the Regex module in Elixir to evaluate the regular expressions.

Some usage examples:
"

IO.puts "iex()> Regex.run ~r{[aeiou]}, \"caterpillar\""
IO.inspect(Regex.run ~r{[aeiou]}, "caterpillar")

IO.puts "
iex()> Regex.scan ~r{[aeiou]}, \"caterpillar\""
IO.inspect(Regex.scan ~r{[aeiou]}, "caterpillar")

IO.puts "
iex()> Regex.split ~r{[aeiou]}, \"caterpillar\""
IO.inspect(Regex.split ~r{[aeiou]}, "caterpillar")

IO.puts "
iex()> Regex.replace ~r{[aeiou]}, \"caterpillar\", \"*\""
IO.inspect(Regex.replace ~r{[aeiou]}, "caterpillar", "*")

IO.puts "
iex> i ~r{[aeiou]}
Term
  ~r/[aeiou]/
Data type
  Regex
Description
  This is a struct. Structs are maps with a __struct__ key.
Reference modules
  Regex, Map
Implemented protocols
  IEx.Info, Inspect
"