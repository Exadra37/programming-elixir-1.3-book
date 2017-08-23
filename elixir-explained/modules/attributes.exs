# Chapter 6 > Modules and Named Functions > Module Attributes
# Page 61

defmodule Attributes do

  @author "Dave Thomas"

  def book_author() do
    IO.puts "The Programming Elixir 1.3 book author is #{@author}... By the way thanks for this excellent book :)"
  end

  @author "Exadra37"

  def code_author() do
    IO.puts "The author of current code is #{@author}, as part of learning Elixir... I am loving it :)"
  end

  def all() do
    IO.puts "I am #{code_author()} and this code is the result of learning Elixir with #{book_author()} book Programming Elixir 1.3 ..."
  end

  def docs do

    IO.puts """

    MODULE ATTRIBUTES

      Elixir allows us to declare attributes in the module body, outside the function, that will than accessible in any
      function.

      Attributes can bee statically mutated in the module body, once they can appear more than once, but their value
      can't be mutated at runtime.

      When accessing an attribute that is declared more than once, the function using it will get the last value assigned
      to it before the function declaration.

      The Modules Attributes Syntax

        → @attribute value


    ---> IEX Examples:

      iex> c "elixir-explained/modules/attributes.exs"
      [Attributes]

      iex> Attributes.book_author()
      The Programming Elixir 1.3 book author is Dave Thomas... By the way thanks for this excellent book :)
      :ok

      iex> Attributes.code_author()
      The author of current code is Exadra37, as part of learning Elixir... I am loving it :)
      :ok

      iex> Attributes.all()
      The author of current code is Exadra37, as part of learning Elixir... I am loving it :)
      The Programming Elixir 1.3 book author is Dave Thomas... By the way thanks for this excellent book :)
      I am ok and this code is the result of learning Elixir with ok book Programming Elixir 1.3 ...
      :ok

    """

  end

  def rant() do

    IO.puts """

    MODULE ATTRIBUTES

      Using modules attributes in Elixir is almost like properties of a class in OOP than as constants.

      In my opinion once the module attributes are mutable, does not make sense to compare them with constants, as the
      author does.

      As far I am aware Constants are not allowed to change after declaration, but if they can change in some languages
      than they are not constants any more.

      I love Elixir but it really makes no sense for me when somebody tries to hide mutability in Elixir behind fancy
      words like, rebound, rebind, etc. .

      What happens here is that the attribute is mutable, because:
        → is possible to reassign another value to it.
        → is not guaranteed that I can always access it with same value across all module functions.

      Elixir is really 100% immutable on data structures, but is not on variables and modules attributes.

      So please stop pretending that Elixir is a Functional Language with 100% immutability, because is not, and
      recognize that reassignment is possible, just like in OOP, but only for variables and modules attributes, as far
      as I know at this point of the book.

    """

  end

end
