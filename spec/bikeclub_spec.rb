require './lib/biker'
require './lib/ride'
require './lib/bikeclub'

RSpec.describe BikeClub do
  it 'exists and has a name, and an array for biker objects' do
    bikeclub = BikeClub("The Bike Club")

    expect(bikeclub).to be_a(BikeClub)
    expect(bikeclub.name).to eq("The Bike Club")
    expect(bikeclub.bikers).to eq([])
  end
end
