defmodule Conjunction do
  @doc ~S"""
  Combine a list of strings with a conjunction

  ## Examples

      iex> Conjunction.join([])
      ""

      iex> Conjunction.join(["red"])
      "red"

      iex> Conjunction.join(["red", "blue"])
      "red and blue"

      iex> Conjunction.join(["red", "blue"], "or")
      "red or blue"

      iex> Conjunction.join(["red", "blue", "white"])
      "red, blue, and white"

      iex> Conjunction.join(["red", "blue", "white"], "or")
      "red, blue, or white"
  """
  @spec join([String]) :: String.t()
  def join(words, conjunction \\ "and")
  def join([], _), do: ""
  def join([word], _), do: word
  def join([word1, word2], conjunction) do
    word1 <> " #{conjunction} " <> word2
  end
  def join(words, conjunction) do
    words
    |> Enum.drop(-1)
    |> Enum.join(", ")
    |> Kernel.<>(", #{conjunction} " <> List.last(words))
  end
end
