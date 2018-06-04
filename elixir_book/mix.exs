defmodule ElixirBook.Mixfile do
  use Mix.Project

  def project do
    [app: :elixir_book,
     version: "0.1.0",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     name: "Programming Elixir Book",
     source_url: "https://gitlab.com/exadra37-learning/elixir/programming-elixir-1.3-book",
     deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      { :ex_doc, "~> 0.18.1" },
      { :earmark, "~> 1.2.4" },
    ]
  end
end
