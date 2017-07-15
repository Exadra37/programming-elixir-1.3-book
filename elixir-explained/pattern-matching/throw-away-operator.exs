# CHAPTER: Ignoring a value with _(Underscore)

IO.puts "\nHow to ignore values in Pattern Matching with the throw away operator.\n"

IO.puts "iex()>[1,_,_] = [1, 2, 3]"
IO.inspect([1,_,_] = [1, 2, 3])
IO.puts "\nAs we can see despite the left side not being equal to right side the Pattern Match succeeds."
IO.puts "This is possible due to the use of the underscore operator on the left side, that basically accepts anything,"
IO.puts " making possible to have the same structure in both sides and only capture the value 1, the one we are interested in."
IO.puts "So this example will match any list containing 3 elements where the first element has the value 1."

IO.puts "\nAnother example...\n"

IO.puts "iex()>[1, _, _] = [1, \"cat\", \"dog\"]"
IO.inspect([1, _, _] = [1, "cat", "dog"])
IO.puts "Once more we can see that Pattern Matching succeeds, regardless what are the second and third element value and type."

IO.puts "\nExample for extracting into variables only the first and last element of a list with three elements...\n"

IO.puts "iex()> [first, _, last] = [1, 2, 3]"
IO.inspect([first, _, last] = [1, 2, 3])
IO.puts "iex()> first"
IO.inspect(first)
IO.puts "iex()> last"
IO.inspect(last)

IO.puts "\nThe throw away operator becomes very useful for Pattern Matching, once allows to perform partial matches and"
IO.puts " store them into variables.\n"
