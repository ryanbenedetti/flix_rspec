require 'spec_helper'

describe "A movie" do
  it "is a flop if the total gross amount is less than $50M" do
    movie = Movie.new(total_gross: 49999999.99)
    
    expect(movie.flop?).to eq(true)
  end

  it "is not a flop if the total gross amount is $50M or more" do
    movie = Movie.new(total_gross: 50000000.00)
    
    expect(movie.flop?).to eq(false)
  end

end