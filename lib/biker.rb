class Biker
  attr_reader :name, :max_distance, :rides, :acceptable_terrain

  def initialize(name, max_distance)
    @name = name
    @max_distance = max_distance
    @rides = {}
    @acceptable_terrain = []
  end

  def learn_terrain!(terrain)
    @acceptable_terrain << terrain
  end

  def log_ride(ride, time)
  #biker does not log a ride, if their terrain, is not acceptable terrain
  ## and if the ride's total distance is greater than the bikers max

    #return unless ride.terrain.include?(@acceptable_terrain) && (ride.total_distance > (@max_distance))
    # if (ride.terrain == @acceptable_terrain) && (ride.total_distance < @max_distance)
    #problem : ride.terrain.include? notavailable for symbol
    if (ride.total_distance < @max_distance)
      if @rides[ride] == nil
        @rides[ride] = [time]
      else ride.name == ride.name
        @rides[ride] += [time]
      end
    end
  end

  def personal_record(ride_obj)
    #bikers lowest time recorded for the ride, is their personal_record
    #if the biker hasn't completed the ride, it returns false
    #a biker can't completed a ride if the total distance is above their max
    #or if their terrain is not included in the ride's terrain

    #we have the rides hash which has the ride, and the array of times
    #we want to check that array for each ride, and return the lowest number

    #iterate over the hash, and get in to the times value, return the lowest value

    #I am getting an array with the lowest time and a nil. i think the
    #nil is returning in the array because I have it trying to match
    #the name of the specific ride. I need to come back to see how to get
    #just the minimum value out of the array
    if ride_obj.total_distance < @max_distance
      @rides.map do |ride, time|
        if ride_obj.name == ride.name
          time.min
        end
      end.compact.pop
    else
      false
    end
  end
end
