# Chapter 4 > Elixir Basics > Value Types > Floating-Point Numbers

IO.puts "
Floating point numbers must contain at least one digit in each side of the decimal point:
	→ 1.0
	→ 0.2456
	→ 0.314159e1
	→ 314159.0e-5

Floats:
	→ Follow IEEE 754 double presicion specification.
	→ Accuracy is about 16 digits.
	→ Max exponent is around 10(308)
" 

IO.puts "
iex> 1.0"
IO.inspect(1.0)

IO.puts "
iex> is_float 1.0"
IO.inspect(is_float 1.0)

IO.puts "
iex> i 1.0
Term
  1.0
Data type
  Float
Reference modules
  Float
Implemented protocols
  IEx.Info, String.Chars, List.Chars, Inspect
"
