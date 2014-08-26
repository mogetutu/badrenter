require_relative '../spec_helper'

describe Customer do
  let(:customer) { Customer.new('Test Customer') }
  let(:movie)    { Movie.new('Test Movie', Movie::CHILDRENS) }
  let(:cd)       { CompactDisc.new('testserial', movie) }
  let(:rental)   { Rental.new(cd, 4) }

  describe "index" do
    it "assigns name to @name" do
      expect(customer.name).to eq('Test Customer')
    end

    it "assigns a new array to @rentals" do
      expect(customer.rentals).to eq([])
    end
  end

  describe "addRental" do
    it "adds a new rental to the @rentals array" do
      expect{customer.addRental(rental)}.to change{customer.rentals.size}.by(1)
    end
  end

  describe "statement" do
    before :each do
      customer.addRental(rental)
    end

    it "outputs the name of a movie" do
      expect(customer.statement).to match(/Test Movie/)
    end

    it "outputs the correct price" do
      expect(customer.statement).to match(/3.00/)
    end
  end
end
