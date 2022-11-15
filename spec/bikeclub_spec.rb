require './lib/biker'
require './lib/ride'
require './lib/bikeclub'

RSpec.describe BikeClub do
  it 'exists and has a name, and an array for biker objects' do
    bike_club = BikeClub.new("The Bike Club")

    expect(bike_club).to be_a(BikeClub)
    expect(bike_club.name).to eq("The Bike Club")
    expect(bike_club.bikers).to eq([])
  end

  describe '#add_biker' do
    it 'can add bikers to the bikers array' do
      bike_club = BikeClub.new("The Bike Club")
      biker = Biker.new("Kenny", 30)
      biker2 = Biker.new("Athena", 15)

      bike_club.add_biker(biker)
      bike_club.add_biker(biker2)

      expect(bike_club.bikers).to eq([biker, biker2])
    end
  end
end
