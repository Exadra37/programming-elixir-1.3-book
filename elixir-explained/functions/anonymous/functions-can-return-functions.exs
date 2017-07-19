# Chapter 5 > Anonymous Functions > Functions Can Return Functions


IO.puts "
Functions Can Return Functions

Really...

Signature withour parameters:

fn -> (fn -> body end) end

fn ->
    fn ->
        body
    end
end


Signature with parameters:

fn (outer_parameters)-> (fn (inner_parameters) -> body end) end

fn (outer_parameters) ->

    fn (inner_parameters)->

        # outer parameters are available inside the inner function
        body
    end

end
"

outer_function = fn -> (fn -> "Hello from Inner Function" end) end

inner_function = outer_function.()

IO.puts "
---> Example Without Parameters <---

outer_function = fn -> (fn -> \"Hello from Inner Function\" end) end

# invoking the inner function from the outer_function by using `.().()`
IO.puts(outer_function.().())"
IO.puts(outer_function.().())

IO.puts "
# bound the inner function to a variable
inner_function = outer_function.()

# let's inspect the variable to see that has now the inner function
IO.inspect(inner_function)"
IO.inspect(inner_function)

IO.puts "
# this time we can invoke directly the inner function without needing to use the outer function
IO.puts(inner_function.())"
IO.puts(inner_function.())



IO.puts "

---> Example With Parameters <---

value = fn (number) ->
            fn (increment) ->
                # variable number is accessible here because inner functions always carry with them the parameters of
                # the outer function.
                number + increment
            end
        end

# Getting the inner function and setting is value to 2
increment_by = value.(2)

# Using the inner function to increment the value 2 of the outer function by 4
IO.puts(increment_by.(4))"

value = fn (number) ->
            fn (increment) ->
                number + increment
            end
        end

increment_by = value.(2)

IO.puts(increment_by.(4))
