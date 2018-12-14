defmodule Advent2018 do
  @moduledoc """
  Documentation for Advent2018.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Advent2018.hello
      :world

  """
  def hello do
    :world
  end

  defp count_items_in_list(list) do
    Enum.reduce(list, %{}, fn x, acc ->
      Map.update(acc, x, 1, &(&1+1))
    end)
  end

  def letter_counts(ids) do
    ids |> String.graphemes |> count_items_in_list
  end

  def map_contains_n_of_value(map, n) do
    map |> Map.values |> Enum.member?(n)
  end

  def count_containing_n_of_letter(input, n) do
    input |> Enum.map(&letter_counts/1) |> Enum.filter(fn i ->
      map_contains_n_of_value(i, n)
    end) |> Enum.count
  end

  def checksum(input) do
    count_containing_n_of_letter(input, 2) *
    count_containing_n_of_letter(input, 3)
  end

  def differ_by_one_char(input) do
    Toolbox.combination(2, input)
      |> Enum.filter(fn {a, b} -> // to do
      end)
  end

  def d2p1 do
    Toolbox.input(2) |> Toolbox.array |> checksum
  end
end
