defmodule ListFilterTest do
  use ExUnit.Case
  doctest ListFilter

  describe "call/1" do
    test "should return 0 when list dont contains odd integers" do
      # condition
      list = ["2", "A"]

      # action
      count = ListFilter.call(list)

      # verify
      assert count == 0
    end

    test "should return 1 when list contains one odd integer" do
      # condition
      list = ["3"]

      # action
      count = ListFilter.call(list)

      # verify
      assert count == 1
    end

    test "should return 2 when list contains two equals odd integers" do
      # condition
      list = ["3", "3"]

      # action
      count = ListFilter.call(list)

      # verify
      assert count == 2
    end
  end
end
