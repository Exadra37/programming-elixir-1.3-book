# Chapter 4 > Elixir Basics > Time

IO.write "
TIME

The time type is constituted by:
    * hour
    * minute
    * second
    * fractions of a second
        - internally this is a Tuple where the first elements is the microseconds and the second element is the number
            of digits in the microseconds field.
"

IO.write "
# Creating a time with built in module Time.
iex()> time1 = Time.new(23, 29, 58)
"
IO.inspect(time1 = Time.new(23, 29, 58))

IO.write "
# Creating the same time manually.
iex()> time2 = Time.new(23, 29, 58, 00)
"
IO.inspect(time2 = Time.new(23, 29, 58, 00))

IO.write "
# Asserting both times are the same... Whoops they are not???
iex()> time1 == time2
"
IO.inspect(time1 == time2)

IO.write "
# Inspecting time1
# So in variable time1 the microseconds have value 0 and 0 digits in the microseconds field, because time1 is
#  represented by ~T[23:29:58] where we just see the presence of hour, minutes, seconds and no microseconds field.
"
IO.inspect(time1, structs: false)

IO.write "
# Inspecting time2
# ~T[23:29:58.000000] Here microseconds value is also 0, but we have 6 digits in the field microseconds, therefore this
#  is the reason why the assertion for time1 == time2 is false.
"
IO.inspect(time2, structs: false)

IO.write "
IMPORTANT:

In time the number of digits that represents the field microseconds are important when we want to assert or
 Pattern Match 2 times are equal.
"

IO.write "
# {:ok, ~T[23:29:58]} = {:ok, ~T[23:29:58.000000]}
# As we can see Pattern Matching will also fail to assert both times are the same, once a Match Error is raised due to
#  both sides being different in the microseconds field.
"
#IO.inspect({:ok, ~T[23:29:58]} = {:ok, ~T[23:29:58.000000]})
IO.inspect(^time1 = time2)
