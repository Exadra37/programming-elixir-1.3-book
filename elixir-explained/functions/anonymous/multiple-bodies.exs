# Chapter 5 > Anonymous Functions > Multiple Bodies


IO.puts "
Anonymous Function with Multiple Bodies
    → foo = fn
                parameters -> body end
                parameters -> body end
                # and many more body lines as we may need...
            end

When we call the anonymous function `foo(paremeters)` each parameter will be evaluated consecutively in each body line
until a match occurs with the arguments we passed into it.

Each body line may have the same or different number of parameters.
"

IO.puts "
An example of a File Open Handler:

# code to define the anonymous function
handle_open =   fn
                    {:ok, file} -> \"First Line:\\n \#{IO.read(file, :line)}\"
                    {_, error}  -> \"Error:\\n \#{:file.format_error(error)}\" # :file.format_error/1 is a Erlang function
                end
"

handle_open =   fn
                    {:ok, file} -> "First Line:\n #{IO.read(file, :line)}"
                    {_, error}  -> "Error:\n #{:file.format_error(error)}"
                end

IO.puts "
# Opening a existing file will return us the first line.
IO.puts(handle_open.(File.open(\"multiple-bodies.exs\")))
"
IO.puts(handle_open.(File.open("multiple-bodies.exs")))

IO.puts "
# Opening a non existent file will return us an error.
IO.puts(handle_open.(File.open(\"non-existent-file\")))
"
IO.puts(handle_open.(File.open("non-existent-file")))
