# Chapter 4 > Elixir Basics > System Types > Pids

IO.puts "

PID:
	→ is a reference to a local or remote process.
	→ each time we spawn a new process a new PID is created.

The reason a PID can be local or remote is that Elixir supports to run natively as a distributed system, courtesy of the Erlang VM.
"

IO.puts "
iex> file = File.open(\"pids.exs\")
{:ok, #PID<0.85.0>}
iex(2)> i file
Term
  {:ok, #PID<0.85.0>}
Data type
  Tuple
Reference modules
  Tuple
Implemented protocols
  IEx.Info, Inspect
"
