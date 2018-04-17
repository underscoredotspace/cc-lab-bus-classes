require('minitest/autorun')
require('minitest/rg')
require_relative('../bus')

class TestBus < MiniTest::Test
  def setup
    @bus1 = Bus.new(22, "Ocean Terminal")
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
end