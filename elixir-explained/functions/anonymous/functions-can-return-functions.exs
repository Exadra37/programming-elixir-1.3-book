# Chapter 5 > Anonymous Functions > Functions Can Return Functions


IO.puts "
Functions Can Return Functions

Really...

fn -> (fn -> body end) end

fn ->
    fn ->
        body
    end
end
"

outer_function = fn -> (fn -> "Hello from Inner Function" end) end

inner_function = outer_function.()

IO.puts "
Let's give it a try:

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
