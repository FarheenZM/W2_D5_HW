class Guest

  attr_reader :name, :money, :fav_song

  def initialize(name, money)
    @name = name
    @money = money
    @fav_song = nil
  end

  def add_fav_song(song)
    @fav_song = song
  end

  def deduct_money(amount)
    @money -= amount
  end
end
