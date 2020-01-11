defmodule Test.MainTest do
  use ExUnit.Case

  doctest Main

  alias Common.SomeStruct

  @tag :distributed
  test "run_predict/0" do
    assert Main.run_predict() == SomeStruct.new(12, "bla bla")
  end
end
