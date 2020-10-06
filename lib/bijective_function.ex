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

  defp a ~> b, do: :math.pow(a, b) |> round()

  @doc """
  Bijective encode function

  ## Examples

      iex> BijectiveFunction.encode(12345)
      "dnh"

  """
  def encode(0), do: "a"
  def encode(id), do: do_encode(id, "")

  defp do_encode(0, acc), do: acc
  defp do_encode(id, acc) do
    do_encode(div(id, @base), getLetterFromAlphabet(rem(id, @base)) <> acc)
  end

  defp getLetterFromAlphabet(index) do
    @alphabet |> String.at(index)
  end

  @doc """
  Bijective decode function

  ## Examples

      iex> BijectiveFunction.decode("h6K")
      30540
  """
  def decode(string) do
    string
    |> String.graphemes()
    |> Enum.reverse()
    |> Enum.with_index()
    |> Enum.map(&multiply_by_base(&1))
    |> Enum.sum()
  end

  defp multiply_by_base({letter, position}) do
    { index, _ } = :binary.match @alphabet, letter

    index * (@base ~> position)
  end
end
