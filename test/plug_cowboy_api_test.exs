defmodule PlugCowboyApiTest do
  use ExUnit.Case
  doctest PlugCowboyApi

  test "greets the world" do
    assert PlugCowboyApi.hello() == :world
  end
end
