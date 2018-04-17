require('minitest/autorun')
require('minitest/rg')
require_relative('../bus')
require_relative('../person')

class TestBus < MiniTest::Test
  def setup
    @bus1 = Bus.new(22, "Ocean Terminal")
    @passenger1 = Person.new("Johnny", 20)
    @passenger2 = Person.new("Timmy", 4)
  end

  def test_bus_route_number
    route_number = @bus1.route_number()

    assert_equal(22, route_number)
  end

  def test_bus_destination
    destination = @bus1.destination()

    assert_equal("Ocean Terminal", destination)
  end

  def test_can_drive
    assert_equal("Brum brum", @bus1.drive)
  end

  def test_has_passengers
    assert_equal([], @bus1.passengers)
  end

  def test_passenger_count
    assert_equal(0, @bus1.number_of_passengers())
  end  

  def test_pick_up_passenger()
    @bus1.pick_up(@passenger1)
    assert_equal(1, @bus1.number_of_passengers())
  end

  def test_pick_up_passenger()
    @bus1.pick_up(@passenger1)
    @bus1.drop_off(@passenger1)
    assert_equal(0, @bus1.number_of_passengers())
  end

  def test_empty_bus
    @bus1.pick_up(@passenger1)
    @bus1.pick_up(@passenger2)
    @bus1.empty()
    assert_equal(0, @bus1.number_of_passengers())
  end

  def test_pick_up_from_stop
    stop1 = BusStop.new("Ocean Terminal")
    stop1.add_person(@passenger1)
    stop1.add_person(@passenger2)
    @bus1.pick_up_from_stop(stop1)
    assert_equal(2, @bus1.number_of_passengers())
    assert_equal(0, @stop1.queue.length())
  end
end