defprotocol Orisons.Collection.Contains do
  @moduledoc """
  Documentation for Orisons.Collection.Contains
  """
  def contains(item, value)
  def contains(item, value, options \\ [])
end

defimpl Orisons.Collection.Contains, for: Tuple do
  def contains(item, value), do: Enum.find(Tuple.to_list(item), fn(x) -> x == value end) != nil
  def contains(item, value, :precise), do: Enum.find(Tuple.to_list(item), fn(x) -> x === value end) != nil
end

defimpl Orisons.Collection.Contains, for: Map do
  def contains(item, value), do: Enum.find(Map.values(item), fn(x) -> x == value end) != nil
  def contains(item, value, :precise), do: Enum.find(Map.values(item), fn(x) -> x === value end) != nil
end