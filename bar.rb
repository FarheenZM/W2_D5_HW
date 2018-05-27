# The OO CodeClan Caraoke (CCC)
#
# You have been approached to build software for a Karaoke bar. Specifically, they want you to build a software for checking guests in and out, plus handling songs.
#
# Your program should be test driven and should be able to:
#
# Create rooms, songs and guests
# Check in guests to rooms/Check out guests from rooms
# Add songs to rooms
# Extensions
#
# What happens if there are more guests trying to be checked in than there is free space in the room?
# Karaoke venues usually have an entry fee - So the guests could have money so they can pay it.
# Advanced extensions
#
# Guests could have a favourite song, and if their favourite song is on the room's playlist, they can cheer loudly! (return a string like "Whoo!")
# Rooms can keep track of the entry fees/spending of the guests - maybe add a bar tab/bar class?
# Add anything extra you think would be good to have at a karaoke venue!

class Bar
  attr_reader :total_amount, :drinks, :drink_amount

  def initialize( total_amount)
    @total_amount = total_amount
    @drinks = Hash.new
  end

  def add_money(entry_fee)
    @total_amount += entry_fee
  end

  def add_drink(drink_name, amt)
    @drinks[drink_name] = amt
  end

  def serve_drink(drink_name)
      drink_amount = @drinks[drink_name] #accessing hash value by variable
      @total_amount += drink_amount
      return drink_amount
  end

end
