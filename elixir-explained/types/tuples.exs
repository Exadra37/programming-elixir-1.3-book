# Chapter 4 > Elixir Basics > Collection Types > Tuples


IO.puts "
Tuples

A tuple is ordered collection of values that cannot be modified.

We can write a tuple enclosed in braces {} separating each element with a comma.

If we need to hold more than 4 elements in a tuple, than map or structs can be a better fit.

Lets' try to write some:
"

IO.puts "iex()> {1, 2}"
IO.inspect({1, 2})

IO.puts "\niex()> {:ok, 42, \"next\"}"
IO.inspect({:ok, 42, "next"})

IO.puts "\niex()> {:error, :enoent}"
IO.inspect({:error, :enoent})

IO.puts "
Tuples can also be used in Pattern Matching in the same fashion we have used the lists.
"

IO.puts "iex()> {status, count, action} = {:ok, 42, \"next\"}"
IO.inspect({status, count, action} = {:ok, 42, "next"})

IO.puts "\niex()> status"
IO.puts(status)

IO.puts "\niex()> count"
IO.puts(count)

IO.puts "\niex()> action"
IO.puts(action)

IO.puts "
Functions use a lot tuples to return their results.

In the above examples we have seen the atom :ok being used in the tuples.

They are normally present as the first element in the tuple returned from a function call to indicate the success
 of the operation.
"

IO.write "
# Opening a existent file.
iex()> {:ok, File} = File.open(\"tuples.exs\")
"
IO.inspect({:ok, _file} = File.open("tuples.exs"))

IO.write "
# Opening a nox existing file.
# {:error, :enoent} will be the result returned by File.open(), where first element means what it says, an error, and
#  the second element is a term normally used by Unix to tell us that a file doesn't exist.
#
# A Match Error will be the raised, once the returned result doesn't match the expected one.
iex()> {:ok, file} = File.open(\"non-existent-file\")
"
IO.inspect({:ok, _file} = File.open("non-existent-file"))
