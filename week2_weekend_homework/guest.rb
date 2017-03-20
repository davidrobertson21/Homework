require_relative('room')

class Guest

  attr_reader :name, :age, :favourite_genre, :money

  def initialize(name, age, favourite_genre, money)
    @name = name
    @age = age
    @favourite_genre = favourite_genre
    @money = money
  end


  def guests_can_sing
    return "La la la"
  end


  # def get_guest_age
  #   return @guest.age
  # end

  # def get_guest_money
  #   return @guest.money
  # end

  def pay_money(cost)
    @money -= cost
    return @money
  end





end