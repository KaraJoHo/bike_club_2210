class BikeClub
  attr_reader :name, :bikers

  def initialize(name)
    @name = name
    @bikers = []
  end

  def add_biker(biker_obj)
    @bikers << biker_obj
  end
end
