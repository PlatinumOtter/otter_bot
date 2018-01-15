defmodule OtterBotTest do
  use ExUnit.Case
  doctest OtterBot

  test "greets the world" do
    assert OtterBot.hello() == :world
  end
end
