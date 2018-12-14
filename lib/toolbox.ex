defmodule Toolbox do
  def input(day, year \\ 2018) do
    directory = "advent#{year}/"
    filename  = directory <> "input#{day}.txt"
    {:ok, content} = File.read filename
    content
  end

  def array(lines) do
    lines |> String.split("\n", trim: true)
  end

  def permute([]), do: [[]]
  def permute(list) do
    for x <- list, y <- permute(list -- [x]), do: [x|y]
  end

  def combination(0, _), do: [[]]
  def combination(_, []), do: []
  def combination(n, [x|xs]) do
    (for y <- combination(n - 1, xs), do: [x|y]) ++ combination(n, xs)
  end
end
