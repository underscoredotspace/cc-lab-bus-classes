class Bus

  attr_reader :route_number, :destination, :passengers

  def initialize(route_number, destination)
    @route_number = route_number
    @destination = destination
    @passengers = []
  end

  def drive()
    'Brum brum'
  end
  
  def number_of_passengers()
    @passengers.count
  end

end 