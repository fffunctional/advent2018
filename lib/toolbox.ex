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
end
