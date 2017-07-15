# Chapter 4 > Elixir Basics > Dates

IO.write "
Dates and Times

Elixir only implements the ISO-8601 representation of the Gregorian Calendar.

The date type holds a:
    * Year
    * Month
    * Day
    * Reference to the ruling calendar.
"

IO.write "
# The result is a tuple where the second element contains the date.
iex()> date1 = Date.new(2017, 06, 17)
"
IO.inspect(Date.new(2017, 06, 17))

IO.write "
# Pattern Matching will succeed once both sides will produce the same tuple {:ok, ~D[2017-06-17]}
iex()> {:ok, date1} = Date.new(2017, 06, 17)
"
IO.inspect({:ok, date1} = Date.new(2017, 06, 17))

IO.write "
# We can also create the date directly without the need to call the Date module.
iex()> date2 = ~D[2017-06-17]
"
IO.inspect(date2 = ~D[2017-06-17])


IO.write "
# We can Pattern Matching successfully the same dates, the one created from a call to the Date module with the one
#  created manually
iex()> date1 = date2
"
IO.inspect(date1 = date2)

IO.write "
# An assertion can be also performed to confirm both dates are the same.
iex()> date1 == date2
"
IO.inspect(date1 == date2)

IO.write "
# Let's inspect the structure of our date.
iex()> inspect(date1, structs: false)
"
IO.inspect(date1, structs: false)
