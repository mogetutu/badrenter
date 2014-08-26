require_relative 'movie'
require 'pry'

class Customer
  attr_reader :rentals

  def initialize(name)
    @name = name
    @rentals = []
  end

  def addRental(rental)
    @rentals << rental
  end

  def statement
    frequentRenterPoints = 0
    totalAmount          = 0
    result               = "Rental record for " + name + "\n"

    @rentals.each do |rental|
      thisAmount = Movie.amount_due rental
      totalAmount += thisAmount

      frequentRenterPoints += Movie.points rental

      result += "  %-30s %.2f\n" % [rental.cd.movie.name, thisAmount]
    end

    result += "\n"
    result += "Amount owed is %.2f\n" % totalAmount
    result += "You earned " + frequentRenterPoints.to_s + " frequent renter points\n\n"
    result
  end

  def name
    @name
  end
end
