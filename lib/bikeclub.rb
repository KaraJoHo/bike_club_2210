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

  # def best_time_for_ride(ride_obj)
  #   #return the biker with the best time for a given ride
  #   #we have the biker's personal record method
  #   #we can use that to find the best time for the specific ride
  #   #passed in to this method
  #
  #   #go through the bikers array
  #   #for each biker, call the personal record method with the ride obj
  #   #argument
  #
  #   #return the biker with the lowest value(shortest time)
  # 
  #
  #   @bikers.map do |biker|
  #      biker.personal_record(ride_obj)
  #    end.min
  #
  #
  #    #this only gives me the number that is the best time
  #    #I need the biker object who has that number
  # end

  # def eligible_biker(ride_obj)
  #   #returns which biker(s) are eligible for the given ride
  #   #based on their preferences and their max distance
  #   #go through the bikers array
  #   #for each biker check their max distance and preferences and match
  #   #it to the ride object's total distance and terrain
  #   #if the biker has the terrain preference AND the max distance is
  #   #less than the total distance, they are eligible for that ride
  #
  #   @bikers.map do |biker|
  #     if biker.max_distance < ride_obj.distance && ride_obj.terrain.include?(biker.acceptable_terrain)
  #       biker
  #     end
  #   end
  # end
end
