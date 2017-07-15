# Chapter 4 > Elixir Basics > Binaries

IO.write "
BINARIES

Binary literals are enclosed between << and >>.

A single byte can encode more than 2 or 3 separated values as in headers of JPEG and MP3 files.

Each of the values can have a type and size.
"

IO.write "
# Creating a binary.
iex()> binary = <<1, 2>>
"
IO.inspect(binary = <<1, 2>>)

IO.write "
# Check the size of the previously created binary.
iex()> byte_size binary
"
IO.puts(byte_size binary)

IO.write "
# Controlling the type and size of each field in the binary.
iex()> binary = <<3::size(2), 5::size(4), 1::size(2)>>
"
IO.inspect(binary = <<3::size(2), 5::size(4), 1::size(2)>>)

IO.write "
# Getting the binary representation.
iex()> :io.format(\"~-8.2b~n\", :binary.bin_to_list(binary))
"
:io.format("~-8.2b~n", :binary.bin_to_list(binary))

IO.write "
# Checking the size of the previosly created binary.
iex()> byte_size binary
"
IO.inspect( byte_size binary)
