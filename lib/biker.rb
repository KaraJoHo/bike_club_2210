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
    if (ride.total_distance < @max_distance) #&& ride.terrain.include?(@acceptable_terrain)
      if @rides[ride] == nil
        @rides[ride] = [time]
      else ride.name == ride.name
        @rides[ride] += [time]
      end
    end
  end

  def personal_record(ride_obj)
    #same issue as above, can't get past the undefined method .include? for :hills symbol
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
