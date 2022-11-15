class Ride
  attr_reader :name, :distance, :loop, :terrain

  def initialize(attributes)
    @name = attributes[:name]
    @distance = attributes[:distance]
    @loop = attributes[:loop]
    @terrain = attributes[:terrain]
  end

  def loop?
    if @loop == true
      true
    else
      false
    end
  end

  def total_distance
    if loop? == false
      @distance * 2
    else
      @distance
    end
  end
end
