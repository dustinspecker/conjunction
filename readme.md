# Conjunction

> Combine a list of strings with a conjunction

[![Build Status](https://travis-ci.org/dustinspecker/conjunction.svg?branch=master)](https://travis-ci.org/dustinspecker/conjunction)

## Install

In `mix.exs`:

```elixir
def deps do
  [{:conjunction, "~> 1.0.2"}]
end
```

Then run `mix deps.get`.

## Usage

```elixir
Conjunction.join(["red", "blue"])
# => "red and blue"

Conjunction.join(["red", "blue"], "or")
# => "red or blue"

Conjunction.join(["red", "blue", "white"])
# => "red, blue, and white"

Conjunction.join(["red", "blue", "white"], "or")
# => "red, blue, or white"
```

## License

MIT © [Dustin Specker](http://dustinspecker.com)
