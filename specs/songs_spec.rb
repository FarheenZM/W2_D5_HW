
require ("minitest/autorun")
require ("minitest/rg")

require_relative("../songs")

class SongTest < MiniTest::Test

  def setup()
    @song = Song.new("No tears left to cry")
  end

  def test_song_name
    assert_equal("No tears left to cry", @song.name)
  end

end
