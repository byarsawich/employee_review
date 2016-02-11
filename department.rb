require './employee'

class Department
  attr_reader :name

  def initialize(name)
    @name = name
    @employees = []
  end

  def add_employee(employee)
    @employees << employee
  end

  def get_employee(name: nil, email: nil)
    if name.nil?
      get_employee_by_email(email).first
    else
      get_employee_by_name(name).first
    end
  end

  private def get_employee_by_name(name)
    @employees.select {|e| e.name == name}
  end

  private def get_employee_by_email(email)
    @employees.select {|e| e.email == email}
  end

  def total_salary
    @employees.reduce {|sum, i| sum + i.salary}
  end
end
