defmodule BijectiveFunction do
  @moduledoc """
  Bijective Function implementation in elixir, encode an ID(integer) to a short string, decode
  a short string to an ID(integer)
  """

  @lowercase_alphabet ?a..?z |> Enum.to_list()
  @uppercase_alphabet ?A..?Z |> Enum.to_list()
  @numbers ?0..?9 |> Enum.to_list()

  @alphabet (@lowercase_alphabet ++ @uppercase_alphabet ++ @numbers) |> List.to_string()
  @base @alphabet |> String.length()

  @doc """
  Bijective encode function

  ## Examples

      iex> BijectiveFunction.encode(12345)
      "dnh"

  """
  def encode(0), do: "a"
  def encode(id), do: encode(id, "")
  def encode(0, acc), do: acc
  def encode(id, acc) do
    encode(div(id, @base), getLetterFromAlphabet(rem(id, @base)) <> acc)
  end

  defp getLetterFromAlphabet(index) do
    @alphabet |> String.at(index)
  end
end
