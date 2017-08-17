# Chapter 5 > Anonymous Functions > Exercise: Functions-5


IO.puts "
# Exercise: Functions-5 on page 46

Use the &.. notation ti rewrite the following.

  → Enum.map [1, 2, 3, 4,], fn x -> + 2 end
  → Enum.each [1, 2, 3, 4], fn x -> IO.inspect x end
"

IO.puts "
# Enum.map [1, 2, 3, 4,], fn x -> + 2 end
iex> Enum.map [1, 2, 3, 4], &(&1 + 2)"
IO.inspect(Enum.map [1, 2, 3, 4], &(&1 + 2))


IO.puts "
# Enum.each [1, 2, 3, 4], fn x -> IO.inspect x end
iex> Enum.each [1, 2, 3, 4], &(IO.inspect(&1))"
Enum.each [1, 2, 3, 4], &(IO.inspect(&1))
