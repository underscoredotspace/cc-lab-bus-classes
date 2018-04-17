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

  def pick_up(passenger)
    @passengers.push(passenger)
  end

  def drop_off(passenger)
    @passengers.delete(passenger)
  end

  def empty() 
    @passengers.clear()
  end

  def pick_up_from_stop(stop)
    @passengers += stop.queue
    stop.empty()
  end
end 