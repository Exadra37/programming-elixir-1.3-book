# Chapter 5 > Anonymous Functions > Pinned Values in Function Parameters
# page 44

IO.puts "
The pin operator '^' can also be used in function parameters headers.


Let's give it a try:

greeter =   fn (name, greeting) ->
                fn
                    # only matches when the given name is José
                    (^name) -> \"\#{greeting} \#{name}\"

                    # any name different from José will match here due to the use operator '_'
                    (_)     -> \"I don't know you\"
                end
            end

mr_valim = greeter.(\"José\", \"Oi!\")

IO.puts(mr_valim.(\"José\"))
IO.puts(mr_valim.(\"dave\"))
"

greeter =   fn (name, greeting) ->
                fn
                    # only matches when the given name is José due to the use of the pin '^' operator
                    # try to remove it to see the difference.
                    (^name) -> "#{greeting} #{name}"

                    # any name different from José will match here due to the use operator '_'
                    (_)     -> "I don't know you"
                end
            end

mr_valim = greeter.("José", "Oi!")

IO.puts(mr_valim.("José"))
IO.puts(mr_valim.("dave"))
