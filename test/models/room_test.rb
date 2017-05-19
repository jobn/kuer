require 'test_helper'

class RoomTest < ActiveSupport::TestCase
  test "fixtures are valid" do
    assert_valid rooms(:lab)
    assert_valid rooms(:danish)
  end

  test "room must have nickname" do
    lab = rooms(:lab)
    lab.nickname = nil
    assert_invalid lab
  end

  test "room must have number" do
    lab = rooms(:lab)
    lab.number = nil
    assert_invalid lab
  end

  test "room must have unique number" do
    assert_invalid Room.new(
      nickname: "English",
      number: rooms(:lab).number
    )
  end

  test "room gets number on initialization" do
    assert Room.new().number
  end
end
