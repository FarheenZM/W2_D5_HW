require ("minitest/autorun")
require ("minitest/rg")

require_relative("../guests")

class GuestTest < MiniTest::Test

  def setup()
    @guest = Guest.new("Eti", 90)
  end

  def test_guest_has_name
    assert_equal("Eti", @guest.name)
  end

  def test_guest_has_money
    assert_equal(90, @guest.money)
  end

  def test_add_fav_song
    @guest.add_fav_song("Despacito")
    assert_equal("Despacito", @guest.fav_song)
  end

  def test_deduct_money
    assert_equal(87, @guest.deduct_money(3))
  end
end
