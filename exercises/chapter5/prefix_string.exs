# Chapter 5 > Anonymous Functions > Exercises > Prefix Sting

IO.puts "
Exercise:Functions-4 on page 43

Write a function to add a prefix to a string by using an outer function that accepts the prefix and an inner function
that accepts the string to be prefixed.

The prefix must be followed by a space and then the string of the inner function.

So the final result should be in the form of `prefix string`.


The code:

prefix =    fn (prefix_string) ->
                fn (string_to_prefix) ->
                    \"\#{prefix_string} \#{string_to_prefix}\"
                end
            end

mrs = prefix.(\"Mrs\")

IO.puts(mrs.(\"Smith\"))

IO.puts(prefix.(\"Elixir\").(\"Rocks\"))
"

prefix =    fn (prefix_string) ->
                fn (string_to_prefix) ->
                    "#{prefix_string} #{string_to_prefix}"
                end
            end

mrs = prefix.('Mrs')

IO.puts(mrs.("Smith"))

IO.puts(prefix.("Elixir").("Rocks"))
