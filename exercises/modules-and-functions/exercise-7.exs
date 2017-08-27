# Chapter 6 > Modules and Named Functions > Exercise 7
# Page 63
# Link: http://forums.pragprog.com/forums/322/topics/Exercise:%20ModulesAndFunctions-7

defmodule Exercise7 do

  def float_to_string(float_value) do

    :io.format("\nThe float value `#{float_value}` as a string with 2 decimal digits is: ~.2f~n", [float_value])

    IO.puts """

    ---> Try it in IEX:

    iex> :io.format("~.2f~n", [12.3456789])
    "12.35"

    <---

    This task was achieved by using the Erlang library:
      → io - http://erlang.org/doc/man/io.html#format-2

    """

  end

  def get_from_env(var_name) do

    env_value = System.get_env(var_name)

    IO.puts """

    The env value for "#{var_name}" is: #{env_value}


    ---> Try it in IEX:

    iex> System.get_env("#{var_name}")
    "#{env_value}"

    <---

    This task was echieved by using the Elixir Library:
      → System - https://hexdocs.pm/elixir/System.html#get_env/0

    """

  end

  def get_extension_from(file) do

    extension = Path.extname(file)

    IO.puts """

    The Extension is: #{extension}

    ---> Try it on IEX:

    iex> Path.extname("#{file}")
    "#{extension}"

    <---

    Task achieved by using Elixir library:
      → Path - https://hexdocs.pm/elixir/Path.html#extname/1

    """

  end

  def current_working_directory() do

    current_working_directory = System.cwd()

    IO.puts """

    The process current working directory is: #{current_working_directory}

    ---> Try it on IEX:

    iex> System.cwd()
    "#{current_working_directory}"

    <---

    Task achieved by using Elixir library:
      → System - https://hexdocs.pm/elixir/System.html#cwd/0

    """

  end

  def json_decode() do

    IO.puts """

    This task can be achieved by installing a external Elixir Library:
      → Poison - https://hexdocs.pm/poison/Poison.Decode.html
    """

  end

  def execute_shell_command() do

    System.cmd("echo", ["Hello Elixir"])

    IO.puts """

    ---> Try it in IEX:

    iex> System.cmd("echo", ["Hello Elixir"])
    {"Hello Elixir\\n", 0}

    <---

    Task achieved by using Elixir library:
      → System - https://hexdocs.pm/elixir/System.html#cmd/3

    """

  end

end

