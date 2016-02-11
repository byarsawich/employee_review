require 'minitest/autorun'
require 'minitest/pride'

#Note: This line is going to fail first.
require './department.rb'

class ArtistAndAlbumsTest < Minitest::Test
  def test_classes_exists
    assert Employee
    assert Department
  end

  def test_create_new_employee_and_get_attributes
    e = Employee.new("Brian", "Yarsawich", "test@test.com", "919-555-5555", 150000)
    assert e
    assert_equal "Brian", e.first_name
    assert_equal "Yarsawich", e.last_name
    assert_equal "Brian Yarsawich", e.name
    assert_equal 150000, e.salary
  end

end
