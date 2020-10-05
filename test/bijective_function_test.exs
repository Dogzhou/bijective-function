defmodule BijectiveFunctionTest do
  use ExUnit.Case
  doctest BijectiveFunction

  test "greets the world" do
    assert BijectiveFunction.encode(12345) == "dnh"
  end
end
