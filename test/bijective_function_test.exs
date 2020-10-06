defmodule BijectiveFunctionTest do
  use ExUnit.Case
  doctest BijectiveFunction

  describe ".encode" do
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

  describe ".decode" do
    test "result is greater than base(62)" do
      assert BijectiveFunction.decode("dnh") == 12345
    end

    test "result is less than base(62)" do
      assert BijectiveFunction.decode("9") == 61
    end

    test "result is 0" do
      assert BijectiveFunction.decode("a") == 0
    end
  end
end
