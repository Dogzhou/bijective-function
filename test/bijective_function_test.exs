defmodule BijectiveFunctionTest do
  use ExUnit.Case
  doctest BijectiveFunction

  test "id is greater than 62" do
    assert BijectiveFunction.encode(12345) == "dnh"
  end

  test "id is less than 62" do
    assert BijectiveFunction.encode(61) == "9"
  end

  test "id is 0" do
    assert BijectiveFunction.encode(0) == "a"
  end
end
