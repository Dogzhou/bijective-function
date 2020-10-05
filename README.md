# Bijective Function

https://en.wikipedia.org/wiki/Bijection

a code challenge: https://practice.geeksforgeeks.org/problems/design-a-tiny-url-or-url-shortener2031/1

## usuage

```elixir
iex> BijectiveFunction.encode(12345)
"dnh"
iex> BijectiveFunction.decode("dnh")
12345
```

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `bijective_function` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:bijective_function, "~> 0.1.0"}
  ]
end
```

