class Movie
  CHILDRENS   = 2
  REGULAR     = 0
  NEW_RELEASE = 1

  def initialize(name, priceCode)
    @name = name
    @priceCode = priceCode
  end

  def name
    @name
  end

  def priceCode
    @priceCode
  end

  def self.amount_due movie
    thisAmount = 0
    case movie.cd.movie.priceCode
    when Movie::REGULAR
      thisAmount = 2
      if movie.daysRented > 2
        thisAmount += (movie.daysRented - 2) * 1.5
      end
    when Movie::NEW_RELEASE
      thisAmount = movie.daysRented * 3
    when Movie::CHILDRENS
      thisAmount = 1.5
      if movie.daysRented > 3
        thisAmount += (movie.daysRented - 3) * 1.5
      end
    end
  end

  def self.points rental
    frequentRenterPoints = 1
    if (rental.cd.movie.priceCode == Movie::NEW_RELEASE && rental.daysRented > 1)
      frequentRenterPoints += 1
    end
    frequentRenterPoints
  end
end
