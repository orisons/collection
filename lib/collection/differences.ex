defprotocol Orisons.Collection.Differences do
  @moduledoc """
  This function will return the values which was in source collection that are not present in the compare collection
  ## Examples
  ### Tuple
      iex> Orisons.Collection.Differences.differences({10, 20}, {10, 30})
      [20]
  ### Map
      iex> Orisons.Collection.Differences.differences(%{"name" => "krystian", "surname" => "drozdzyns", "age" => 23}, %{"name" => "krystian", "surname" => "drozdzynski"})
      %{"age" => 23, "surname" => "drozdzyns"}
  """

  def differences(source, compare)
end

defimpl Orisons.Collection.Differences, for: Tuple do
  def differences(source, compare) do
    Enum.reduce(Tuple.to_list(source), [], fn(x, acc) ->
      case Orisons.Collection.Contains.contains(compare, x) do
        false -> [x | acc]
        true -> acc
      end
    end)
  end
end

defimpl Orisons.Collection.Differences, for: Map do
  def differences(source, compare) do
    Enum.reduce(Map.keys(source), %{}, fn(x, acc) ->
      case Orisons.Collection.Contains.contains(compare, source[x]) do
        false -> Map.put(acc, x, source[x])
        true -> acc
      end
    end)
  end
end
