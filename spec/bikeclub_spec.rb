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

  describe '#biker_with_most_rides' do
    it 'returns the biker with the most rides logged' do
      bike_club = BikeClub.new("The Bike Club")
      biker = Biker.new("Kenny", 30)
      biker2 = Biker.new("Athena", 15)

      ride1 = Ride.new({name: "Walnut Creek Trail", distance: 10.7, loop: false, terrain: :hills})
      ride2 = Ride.new({name: "Town Lake", distance: 14.9, loop: true, terrain: :gravel})

      biker.log_ride(ride1, 92.5)
      biker.log_ride(ride1, 91.1)
      biker.log_ride(ride2, 60.9)
      biker.log_ride(ride2, 61.6)

      biker2.log_ride(ride2, 65.0)

      bike_club.add_biker(biker)
      bike_club.add_biker(biker2)

      expect(bike_club.biker_with_most_rides).to eq(biker)
    end
  end

  describe 'best_time_for_ride' do
    it 'can show which biker has the best time for a given ride' do
      bike_club = BikeClub.new("The Bike Club")
      biker = Biker.new("Kenny", 30)
      biker2 = Biker.new("Athena", 15)

      ride1 = Ride.new({name: "Walnut Creek Trail", distance: 10.7, loop: false, terrain: :hills})
      ride2 = Ride.new({name: "Town Lake", distance: 14.9, loop: true, terrain: :gravel})

      biker.log_ride(ride1, 92.5)
      biker.log_ride(ride1, 91.1)
      biker.log_ride(ride2, 60.9)
      biker.log_ride(ride2, 61.6)

      biker2.log_ride(ride2, 65.0)
      biker2.log_ride(ride2, 40.0)

      bike_club.add_biker(biker)
      bike_club.add_biker(biker2)

      expect(bike_club.best_time_for_ride(ride2)).to eq(biker2)

    end
  end

  describe '#eligible_biker' do
    it 'can show which biker is eligible for a ride based on terrain and max distance' do
      bike_club = BikeClub.new("The Bike Club")
      biker = Biker.new("Kenny", 30)
      biker2 = Biker.new("Athena", 15)

      ride1 = Ride.new({name: "Walnut Creek Trail", distance: 10.7, loop: false, terrain: :hills})
      ride2 = Ride.new({name: "Town Lake", distance: 14.9, loop: true, terrain: :gravel})

      biker.log_ride(ride1, 92.5)
      biker.log_ride(ride1, 91.1)
      biker.log_ride(ride2, 60.9)
      biker.log_ride(ride2, 61.6)

      biker2.log_ride(ride2, 65.0)
      biker2.log_ride(ride2, 40.0)

      bike_club.add_biker(biker)
      bike_club.add_biker(biker2)

      expect(eligible_biker(ride1)).to eq([biker1])
    end
  end
end
