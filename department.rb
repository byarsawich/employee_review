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

  def get_employee(employee)
    reg = /\b[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,}\b/i
    if employee.match(reg)
      get_employee_by_email(employee).first
    else
      get_employee_by_name(employee).first
    end
  end

  private def get_employee_by_name(name)
    @employees.select {|e| e.name == name}
  end

  private def get_employee_by_email(email)
    @employees.select {|e| e.email == email}
  end
end
