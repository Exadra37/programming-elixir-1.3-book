# CHAPTER: Running Elixir

# EXECUTE: elixir -r stringdo.exs -e 'Stringdo.reverse "exadra37"'
defmodule Stringdo do
    def reverse(something) do
        IO.puts(String.reverse something)
    end
end
