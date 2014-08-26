class Rental
  def initialize(cd, daysRented)
    @rental = "Rental of " + cd.name
    @cd = cd
    @daysRented = daysRented
  end

  def daysRented
    @daysRented
  end

  def cd
    @cd
  end
end
