require("minitest/autorun")
require("minitest/rg")
require_relative("../guest")


class TestGuest < MiniTest::Test

def setup
  @new_guest = Guest.new("John", 25, "R&B", 35)
end


def test_guests_can_sing
  assert_equal("La la la", @new_guest.guests_can_sing)
end

def test_guest_name
  assert_equal("John", @new_guest.name)
end

def test_guest_age
  assert_equal(25, @new_guest.age)
end

def test_get_money
  assert_equal(35, @new_guest.money)


end