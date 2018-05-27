require_relative("bar")
class Room

  attr_reader :number, :guests, :songs, :entry_fee, :bar

  def initialize(number)
    @number = number
    @guests = []
    @songs = []
    @room_capacity = 4
    @entry_fee = 10
    @bar = Bar.new(0)
  end

  def guest_has_money(guest)
    return guest.money >= @entry_fee
  end

  def check_in_guest(guest)
    if guest_has_money(guest) && @guests.length < @room_capacity
      @guests << guest
      @bar.add_money(@entry_fee)
      guest.deduct_money(@entry_fee)
    end
  end

  def check_out_guest(guest)
    @guests.delete(guest)
  end

  def add_song(song)
    @songs << song
  end

  def cheer_for_fav_song()
    for guest in @guests
      if @songs.include? guest.fav_song
        return "Whoo!"
      end
    end
    return ""
  end

  def call_for_drink(guest, drink)
    drink_amount = @bar.serve_drink(drink)
    guest.deduct_money(drink_amount)
  end

end
