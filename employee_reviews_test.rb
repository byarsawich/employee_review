require 'minitest/autorun'
require 'minitest/pride'

#Note: This line is going to fail first.
require './department.rb'

class EmployeeReview < Minitest::Test
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

  def test_add_employee_review
    e = Employee.new("Brian", "Yarsawich", "test@test.com", "919-555-5555", 150000)
    e.review = "Obviously the best employee this company has ever seen."
    assert_equal "Obviously the best employee this company has ever seen.", e.review
  end

  def test_add_employee_performance
    e = Employee.new("Brian", "Yarsawich", "test@test.com", "919-555-5555", 150000)
    e.performance = 10
    assert_equal 10, e.performance
    f = Employee.new("John", "Doe", "scum@test.com", "919-111-1111", 10000)
    f.performance = 1
    assert_equal 1, f.performance
  end

  def test_give_employee_raise
    e = Employee.new("Brian", "Yarsawich", "test@test.com", "919-555-5555", 150000)
    assert_equal 150000, e.salary
    e.give_raise!(20000)
    assert_equal 170000, e.salary
    f = Employee.new("John", "Doe", "scum@test.com", "919-111-1111", 10000)
    f.give_raise!(0.01)
    assert_equal 10100, f.salary
  end

  def test_create_new_department
    d = Department.new("Human Resources")
    assert d
    assert_equal "Human Resources", d.name
  end

  def test_add_employee_to_department
    d = Department.new("Development")
    e = Employee.new("Brian", "Yarsawich", "test@test.com", "919-555-5555", 150000)
    d.add_employee(e)
    assert_equal e, d.get_employee("Brian Yarsawich")
    assert_equal e, d.get_employee("test@test.com")
  end

end
