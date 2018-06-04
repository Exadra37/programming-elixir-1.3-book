# Chapter: Programming Should Be About Transforming Data
defmodule Parallel do
    def pmap(collection, func) do
        collection
        |> Enum.map(&(Task.async(fn -> func.(&1) end)))
        |> Enum.map(&Task.await/1)
    end

    # no idea, by now, if a better way exists to print the result of calling pmap
    def output(collection) do
        result = pmap collection,&(&1 * &1)
        Enum.each(result, &(IO.inspect(&1)))
    end
end
