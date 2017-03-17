require("minitest/autorun")
require("minitest/rg")
require_relative("../room")
require_relative("../guest")
require_relative("../song")



class TestRoom < MiniTest::Test

def setup
 
  @guest1 = Guest.new("Jim", 25, "Pop", 50)
  @guest2 = Guest.new("Adam", 23, "Pop", 45)
  @guest3 = Guest.new("Greg", 24, "Rock", 40)
  @guest4 = Guest.new("Adam", 23, "R&B", 35)
  @guest5 = Guest.new("Darren", 22, "Dance", 30)
  @guest6 = Guest.new("Devina", 21, "Pop", 25)
  @guest7 = Guest.new("Graham", 22, "Dance", 20)


  @five_guests = [@guest1, @guest2, @guest3, @guest4, @guest5]
  @pair_of_guests = [@guest6, @guest7]

  @song1 = Song.new("My Heart Will Go On", "Celine Dion", "Pop")
  @song2 = Song.new("Ignition", "R Kelly", "R&B")
  @song3 = Song.new("Sweet Child O' Mine", "Guns 'n' Roses", "Rock")
  @song4 = Song.new("The Logical Song", "Scooter", "Dance")
  @song5 = Song.new("Burn", "Usher", "R&B")
  @song6 = Song.new("I Want It That Way", "Backstreet Boys", "Pop")

  @pop_songs = [@song1, @song6]
  @randb_songs = [@song2, @song5]


  @pop_room = Room.new("Pop", @pop_songs, 3, 35)
  @randb_room = Room.new("R&B", @randb_songs, 3, 40)
  @rock_room = Room.new("Rock", @song3, 3, 45)
  @dance_room = Room.new("Dance", @song4, 3, 25)


end


def test_capacity
  assert_equal(0, @pop_room.room_guests.length)
end


def test_add_guests_to_room
  @pop_room.add_guest_to_room(@guest1)
  assert_equal(1, @pop_room.room_guests.length)
end

def test_add_a_group_of_guests_to_room
  @pop_room.add_all_guests_to_room(@five_guests)
  assert_equal(0, @pop_room.room_guests.length)
end

def test_add_a_pair_of_guests_to_room
  @pop_room.add_all_guests_to_room(@pair_of_guests)
  assert_equal(2, @pop_room.room_guests.length)
end

def test_remove_guest_from_room
  @pop_room.add_guest_to_room(@guest1)
  @pop_room.remove_guest_from_room(@guest1)
  assert_equal(0, @pop_room.room_guests.length)
end

def test_add_song_to_room
  @pop_room.add_song_to_room(@song3)
  assert_equal(3, @pop_room.song_playlist.length)
end

def test_check_if_guest_is_in_room
  @pop_room.add_guest_to_room(@guest1)
   
   assert_equal(true, @pop_room.check_if_guest_is_in_room(@guest1))
end

# def test_check_capacity
#   @pop_room.add_guest_to_room(@guest2)
#   @pop_room.check_capacity()
#   assert_equal(1, pop_room.room_guests.length)
# end



end
