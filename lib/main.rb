require_relative 'customer'
require_relative 'movie'
require_relative 'compact_disc'
require_relative 'rental'

class Main
  def initialize
    customer = Customer.new("Customer 1")
    customer.addRental(Rental.new(cd("Flooberits", Movie::CHILDRENS), 14))
    customer.addRental(Rental.new(cd("Stars from Mars", Movie::REGULAR), 21))
    customer.addRental(Rental.new(cd("Red Clay and Flowers", Movie::NEW_RELEASE), 4))
    puts customer.statement
  end

  private
  def cd(title, priceCode)
    CompactDisc.new(Time.now.to_f, Movie.new(title, priceCode))
  end
end
