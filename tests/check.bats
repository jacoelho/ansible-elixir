#!/usr/bin/env bats

@test "elixir bin exists and is in the PATH" {
  command -v elixir
}

@test "iex bin exists and is in the PATH" {
  command -v iex
}

@test "check elixir version" {
  result="$(elixir -v)"
  [ "$result" = "Elixir 1.0.5" ]
}

@test "simple elixir command test" {
  result="$(elixir -e 'IO.puts 2+2')"
  [ "$result" = "4" ]
}

