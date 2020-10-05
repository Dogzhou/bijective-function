defmodule BijectiveFunction do
  @moduledoc """
  Bijective Function implementation in elixir, encode an ID(integer) to a short string, decode
  a short string to an ID(integer)
  """

  @lowercase_alphabetical_table ?a..?z |> Enum.to_list()
  @uppercase_alphabetical_table ?A..?Z |> Enum.to_list()
  @numbers ?0..?9 |> Enum.to_list()

  @alphabetical_table (@lowercase_alphabetical_table ++ @uppercase_alphabetical_table ++ @numbers) |> List.to_string()
  @base @alphabetical_table |> String.length()

  @doc """
  Bijective encode function

  ## Examples

      iex> BijectiveFunction.encode(19158)
      [4, 61, 0]

  """
  def encode(0), do: '0'

  def encode(id), do: encode(id, [])
  def encode(0, acc), do: acc
  def encode(id, acc) do
    encode(div(id, @base), [rem(id, @base) | acc])
  end
end
