class BikeClub
  attr_reader :name, :bikers

  def initialize(name)
    @name = name
    @bikers = []
  end

  def add_biker(biker_obj)
    @bikers << biker_obj
  end

  def biker_with_most_rides
    @bikers.max_by do |biker|
      biker.rides.map do |ride, time|
        time.count
      end.sum
    end
  end
end
