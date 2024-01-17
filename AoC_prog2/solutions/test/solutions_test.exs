defmodule SolutionsTest do
  use ExUnit.Case
  doctest Solutions


  test "parse int" do
    assert Solutions.parse("7863")== 7863
  end

  test " find number" do
    assert Solutions.find_number("7863") == "73"
  end

  test "removes chars" do
    assert Solutions.remove_char("7four863twonineight") == "7863"
  end

  test "converts text" do
    assert Solutions.convert_text("7four863twonineight") == "7486329ight748632nin8"
  end

  test "sum" do
    list = [1,2,3,4,5]
    assert Solutions.sum(list) == 15
  end

end
