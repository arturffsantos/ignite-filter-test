defmodule ListFilter do
  @moduledoc """
  Documentation for `ListFilter`.
  """

  @doc """
  Count number of odd integers in list

  ## Examples

      iex> ListFilter.call(["2", "banana"])
      0

      iex> ListFilter.call(["1", "3", "6", "43", "banana", "6", "abc"])
      3

  """
  def call(list) do
    list
    |> Enum.map(&convert_to_integer_or_error/1)
    |> Enum.count(fn e -> e != :error && rem(e, 2) != 0 end)
  end

  defp convert_to_integer_or_error(item) do
    case Integer.parse(item) do
      {intValue, _} -> intValue
      :error -> :error
    end
  end
end
