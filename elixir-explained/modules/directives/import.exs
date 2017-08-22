# Chapter 6 > Modules and Named Functions > Directives for Modules > The Import Directive
# Page 59

defmodule Import do

  def example1() do

    IO.puts """

    # Without using the import directive we need to use the Module name to call is function flatten/1
    List.flatten [1, [2, 3], 4]
    """

    List.flatten [1, [2, 3], 4]

  end

  def example2() do

    IO.puts """

    # The import directive allows us to use the flatten/1 function without the need to prefix it with the Module name.
    import List, only: [flatten: 1]
    flatten [5, [6, 7], 8]
    """
    import List, only: [flatten: 1]
    flatten [5, [6, 7], 8]

  end

  def docs() do

    IO.puts """

    MODULE IMPORT DIRECTIVE

      Using the import directive allows us to use functions from other modules without need to prefix them with the
      module name.

      When using the import directive is good idea to use it in the smallest possible scope, by other words to only
      import what we really need to use from that module.


      The Import Directive Syntax:

        → To import only the functions flatten/1 and duplicate/2 from a Module:
            - import ModuleName, only: [flatten: 1, duplicate: 2]

        → To import all functions, except flatten/1 and duplicate/2, from a Module:
            - import ModuleName, except: [flatten: 1, duplicate: 2]

        → To import only functions from a Module:
            - import ModuleName, only: [:functions]

        → To import only macros from a Module:
            - import ModuleName, only: [:macros]


    ---> IEX Example:

    iex> c "elixir-explained/modules/directives/import.exs"
    [Import]

    iex> Import.example1()

    # Without using the import directive we need to use the Module name to call is function flatten/1
    List.flatten [1, [2, 3], 4]

    [1, 2, 3, 4]

    iex> Import.example2()

    # The import directive allows us to use the flatten/1 function without the need to prefix it with the Module name.
    import List, only: [flatten: 1]
    flatten [5, [6, 7], 8]

    [5, 6, 7, 8]

    """

  end

end
