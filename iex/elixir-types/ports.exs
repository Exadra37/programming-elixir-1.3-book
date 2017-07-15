# Chapter 4 > Elixir Basics > System Types > Ports

IO.puts "

Port is a reference to a Resource from where we want to read or write to.

The Resource is normally external to the application.
"

IO.puts "iex> Port.open({:spawn, \"cat\"}, [:binary])"
IO.inspect(port = Port.open({:spawn, "cat"}, [:binary]))

IO.puts "
iex> send port, {self(), {:command, \"Hello World\"}}"
IO.inspect(send port, {self(), {:command, "Hello World"}})
