# Chapter 8 > Maps, Keyword Lists, Sets and Structs > Keyword Lists
# Programming Elixir 1.6 on Page 84

defmodule Canvas do

  @moddoc"""
  # Keyword Lists

  Often used when passing options into functions.

  For easy and simple access we can access their values as `keyword_list[:key]`
  or for more complex use cases we can use any of the functions available from
  **Keyword** and **Enum** modules.
  """

  @defaults [
    fg:   "black",
    bg:   "white",
    font: "Merriweather",
  ]

  def draw_text(text, options \\ []) do

    options = Keyword.merge(@defaults, options)

    IO.puts "Drawing text #{inspect(text)}"
    IO.puts "Foreground:  #{options[:fg]}"
    IO.puts "Background:  #{Keyword.get(options, :bg)}"
    IO.puts "Font:        #{Keyword.get(options, :font)}"
    IO.puts "Pattern:     #{Keyword.get(options, :pattern, "solid")}"
    IO.puts "Style:       #{inspect(Keyword.get_values(options, :style))}"
  end

end

options = [
  fg:    "red",
  style: "italic",
  style: "bold",

]

Canvas.draw_text("hello", options)
