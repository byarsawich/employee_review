class Employee
  attr_reader :first_name, :last_name, :salary
  attr_accessor :review, :performance

  def initialize(first_name, last_name, email, phone_number, salary)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @phone_number = phone_number
    @salary = salary
    @review = nil
    @performance = nil
  end

  def name
    "#{@first_name} #{@last_name}"
  end

  def give_raise!(amount)
     amount > 1.0 ? @salary += amount : @salary = @salary * (1 + amount)
  end
end
