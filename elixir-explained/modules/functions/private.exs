# Chapter 6 > Modules and Named Functions > Private Functions
# Page 56

defmodule Private do

  def docs do

    IO.puts """

    PRIVATE FUNCTIONS

    Once they are private they can only be accessed from inside the module.

    A private function can have several heads just like the public ones, but we can't mix functions with some heads
    public and others private, it will not compile.


    ---> Example:

    ```
    defp has_list(value) when is_list(value) do
        {:true, value}
    end

    defp has_list(value) do
      {:false, value}
    end
    ```

    The above code is invalid because the function has_list() as 2 heads, 1 public and the other private.

    Just rename one of the has_list() functions in this module to public to see Elixir refusing to compile it with an error:

    Erlang/OTP 19 [erts-8.3.5.2] [source] [64-bit] [smp:4:4] [ds:4:4:10] [async-threads:10] [hipe] [kernel-poll:false]

    ** (CompileError) elixir-explained/modules/functions/private.exs:48: defp has_list/1 already defined as def
        (stdlib) erl_eval.erl:670: :erl_eval.do_apply/6

    """

    # using the private function to not have compiler warning saying that is not used.
    has_list("value")

  end

  defp has_list(value) when is_list(value) do
    {:true, value}
  end

  defp has_list(value) do
    {:false, value}
  end

end
