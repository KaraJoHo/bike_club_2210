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
    #bikers can log a ride with a time
    #those are passed in to this method
    #the ride object can track the amount of times
    #in an array
    #so the ride object is the Key
    #the times are the values in an array

    #we have the rides hash, and we can put the
    #ride object oasswed in as a key, in to the hash
    #and its values each time should be added to the array
    if @rides[ride] == nil
      @rides[ride] = [time]
    else ride.name == ride.name
      @rides[ride] += [time]
    end
  end
end
