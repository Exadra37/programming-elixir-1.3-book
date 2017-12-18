# Chapter 4 > Elixir Basics > Operators > Arithemetic


IO.puts "
With Expression

The 'with' expression in Elixir have 2 main purposes:
	→ define a local scope for variables
	→ some control over pattern matching failures
"

IO.puts "
---> Variables Scope <---
"

IO.puts "
# 'code' is a local variable 
code = \"Erlang\"

learning = 	with code = \"Elixir\" # 'code' is a temporary variable here
			do
				\"Learning \" <> code
		  	end
"

code = "Erlang"

learning = 	with code = "Elixir" # 'code' is a temporary variable here
            do
                "Learning " <> code
            end

IO.puts "
Output variable code:"
IO.puts code

IO.puts "
Output variable learning:"
IO.puts(learning)

IO.puts "
Output variable code:"
IO.puts code

IO.puts "
As we can see, despite the variable 'code' had been used to assign value 'Elixir' inside the 'with' expression it still 
has the original value 'Erlang'.
"


IO.puts "
---> With Expression in Pattern Matching <---

When pattern matching we may want to have some control over failures that will end up with a Match Error being raised.

The use of expression 'with' can help here in conjuction with the use of operator '<-' instead '=' to perform the 
Pattern Matching. 

This operator '<-' is only valid to use for Pattern Matching inside a 'with' expression. 

Essentially the operator '<-' will return the value that couldn't be matched, the one in the right side.
"

IO.puts "
# So in this Pattern Matching example a Match Error will be raised because 0 does not exist in right side at the first 
   position in the list.
iex> [0|_] = [1, 2, 3]
** (MatchError) no match of right hand side value: [1, 2, 3]
    with.exs:66: (file)
    (elixir) lib/code.ex:370: Code.require_file/2
"
#IO.inspect([0|_] = [1, 2, 3])

IO.puts "
# Using 'with' expression we can control the Pattern Matching failures.
iex> with [0|_] <- [1, 2, 3], do: \"Found\""
IO.inspect(with [0|_] <- [1, 2, 3], do: "Found")

IO.puts "
As we can see we obtained some control over the Pattern Matching failure scenarios.

Now isntead of a Match Error being raised we have the right side value that couldn't be matched being returned.
"

IO.puts "
---> With Expression Code Blocks <---

The 'with' expression must always be followed by the first parameter, unless we organise the code block inside 
parentheses.


wrong = with # missing param1 here
			param1,
			param2
		do
			something
		end

# The above code block will be valid if wrapped around parentheses.
valid = with(
			param1,
			param2
		do
			something
		end)

# Clean, explicit and easy to read... my preferred style. 
valid = with param1,
			 param2
		do
			something
		end

# Also valid but is not so explicit once it misses the 'end' keyword to make clear that the 'with' block have ended.
valid = with param1,
			 param2,
		do: something
"
