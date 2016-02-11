class Employee
  attr_reader :first_name, :last_name, :salary
  attr_accessor :review

  def initialize(first_name, last_name, email, phone_number, salary)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @phone_number = phone_number
    @salary = salary
    @review = nil
  end

  def name
    "#{@first_name} #{@last_name}"
  end

end
