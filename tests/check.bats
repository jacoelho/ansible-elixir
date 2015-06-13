#!/usr/bin/env bats

@test "elixir bin exists and is in the PATH" {
  which elixir
}

@test "check elixir version" {
  result="$(elixir -v)"
  [ "$result" = "Elixir 1.0.4" ]
}

@test "simple elixir command test" {
  result="$(elixir -e 'IO.puts 2+2')"
  [ "$result" = "4" ]
}

@test "iex bin exists and is in the PATH" {
  which iex
}
