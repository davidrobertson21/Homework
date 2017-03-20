require_relative('guest')


class Room

  attr_reader :room_type, :room_guests, :song_playlist, :capacity, :room_cost, :entry_fee

  def initialize(room_type, song_playlist, capacity, entry_fee)
    @room_type = room_type
    @song_playlist = song_playlist
    @room_guests = []
    @capacity = capacity
    @entry_fee = entry_fee
  end



  def add_guest_to_room(guest)
    # return if @guest.money < @room.entry_fee
    # @guest.pay_money(@room.entry_fee)
    @room_guests << guest
    # end
  end
  
  def add_all_guests_to_room(multiple_guests)
    unless multiple_guests.length > @capacity
      for guest in multiple_guests
        add_guest_to_room(guest)
      end
    end
  end

    def check_if_guest_is_in_room(guest_to_check)
      if @room_guests.include? guest_to_check
        return true
      else
        return false
      end
    end

  
  def remove_guest_from_room(guest_to_remove)
    return if check_if_guest_is_in_room(guest_to_remove) == false
    @room_guests.delete(guest_to_remove)
  end
  

  def add_song_to_room(song)
    @song_playlist << song
  end


  def entry_fee
    return @room.entry_fee
  end



end