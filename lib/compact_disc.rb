class CompactDisc
  def initialize(serial_number, movie)
    @name          = "CD[#{serial_number}] #{movie.name}"
    @serial_number = serial_number
    @movie         = movie
  end

  def compact_disc(serialNumber, movie)
    @serialNumber = serialNumber
    @movie        = movie
  end

  def name
    @name
  end

  def serial_number
    @serial_number
  end

  def movie
    @movie
  end
end
