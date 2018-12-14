defmodule Advent2018Test do
  use ExUnit.Case
  doctest Advent2018

  test "greets the world" do
    assert Advent2018.hello() == :world
  end

  def test_input2, do:
  [
    "abcdef",
    "bababc",
    "abbcde",
    "abcccd",
    "aabcdd",
    "abcdee",
    "ababab"
  ]

  test "day2 part1" do
    # assert test_input2() |> Advent2018.checksum == 12
  end

  test "letter_counts" do
    assert Advent2018.letter_counts("abcdef") ==
    %{"a" => 1, "b" => 1, "c" => 1,
      "d" => 1, "e" => 1, "f" => 1}
  end

  test "map_contains_n_of_value" do
   map = %{"a" => 1, "b" => 1, "c" => 1,
           "d" => 1, "e" => 1, "f" => 1}
    assert Advent2018.map_contains_n_of_value(map, 1) == true
    assert Advent2018.map_contains_n_of_value(map, 2) == false
  end

  test "four items contain two of a letter" do
    assert Advent2018.count_containing_n_of_letter(test_input2(), 2) == 4
  end

  test "three items contain three of a letter" do
    assert Advent2018.count_containing_n_of_letter(test_input2(), 3) == 3
  end

  test "checksum of test input" do
    assert Advent2018.checksum(test_input2()) == 12
  end
end
