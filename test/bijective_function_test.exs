defmodule BijectiveFunctionTest do
  use ExUnit.Case
  doctest BijectiveFunction

  test "greets the world" do
    assert BijectiveFunction.encode(12345) == [3, 13, 7]
  end
end
