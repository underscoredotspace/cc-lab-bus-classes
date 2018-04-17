require('minitest/autorun')
require('minitest/rg')
require_relative('../person')

class TestPerson < MiniTest::Test
  def setup
    @person1 = Person.new('Billy', 35)
  end

  def test_person_has_name
    assert_equal('Billy', @person1.name)
  end

  def test_person_has_age
    assert_equal(35, @person1.age)
  end

end