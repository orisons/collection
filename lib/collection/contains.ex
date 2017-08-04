defmodule Orisons.Collection.Contains do
  @moduledoc false

  defmacro __using__(_opts) do
    quote do

        @doc """
        Hello world.

        ## Examples

            iex> Orisons.Collection.hello
            :world

        """
        def contains(item, value) when is_tuple(item), do: Enum.find(Tuple.to_list(item), fn(x) -> x == value end) != nil


    end
  end
end
