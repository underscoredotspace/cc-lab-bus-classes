require('minitest/autorun')
require('minitest/rg')
require_relative('../bus_stop')
require_relative('../person')

class TestBusStop < MiniTest::Test
  def setup
    @stop1 = BusStop.new("Gyle Center")
  end

  def test_stop_has_name
    assert_equal("Gyle Center", @stop1.name)
  end

  def test_has_queue
    assert_equal([], @stop1.queue)
  end

  def test_add_person
    person3 = Person.new("Sandra", 40)
    @stop1.add_person(person3)
    assert_equal(1, @stop1.queue.length)
  end
end