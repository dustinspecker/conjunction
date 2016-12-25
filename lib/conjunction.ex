defmodule Conjunction do
  @doc ~S"""
  Return a string joined with a conjunction

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
  def join(words, conjunction \\ "and") do
    cond do
      Enum.empty?(words) ->
        ""
      length(words) == 1 ->
        hd(words)
      length(words) == 2 ->
        Enum.join(words, " #{conjunction} ")
      true ->
        words
        |> Enum.drop(-1)
        |> Enum.join(", ")
        |> Kernel.<>(", #{conjunction} " <> List.last(words))
    end
  end
end
