require ("minitest/autorun")
require ("minitest/rg")

require_relative("../rooms")
require_relative("../guests")
require_relative("../songs")
require_relative("../bar")

class RoomTest < MiniTest::Test

  def setup()
    @room = Room.new(101)
    @guest = Guest.new("Eti", 90)
    @song = Song.new("Despacito")
  end

  def test_room_number
    assert_equal(101, @room.number)
  end

  def test_guest_has_money
    assert_equal(true, @room.guest_has_money(@guest))
  end

  def test_check_in_guest
    @room.check_in_guest(@guest)
    assert_equal(1, @room.guests.count)
    assert_equal(80, @guest.money)
  end

  def test_check_out_guest
    @room.check_out_guest(@guest)
    assert_equal(0, @room.guests.count)
  end

  def test_add_song
    @room.add_song(@song)
    assert_equal(1, @room.songs.count)
  end

  def test_cheer_for_fav_song
    @guest.add_fav_song(@song)
    @room.check_in_guest(@guest)
    @room.add_song(@song)
    assert_equal("Whoo!", @room.cheer_for_fav_song())
  end

  def test_call_for_drink
    @room.check_in_guest(@guest)
    @room.bar.add_drink("Beer", 3)
    @room.call_for_drink(@guest, "Beer")
    assert_equal(77, @guest.money)
  end

end
