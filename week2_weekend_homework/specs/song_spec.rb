require("minitest/autorun")
require("minitest/rg")
require_relative("../song")


class TestSong < MiniTest::Test

def setup
  @new_song = Song.new("9 to 5", "Dolly Parton", "Pop")
end

def test_song_name
  assert_equal("9 to 5", @new_song.title)
end


end
