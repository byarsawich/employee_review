class Employee
  attr_reader :first_name, :middle_name, :last_name, :email, :phone_number
  attr_accessor :review, :performance

  def initialize(first_name, last_name, email, phone_number, salary, middle_name = "")
    @first_name = first_name
    @middle_name = middle_name
    @last_name = last_name
    @email = email
    @phone_number = phone_number
    @salary = salary.to_f
    @review = ""
    @performance = nil
  end

  def salary
    @salary.to_f
  end

  def name
    @middle_name != "" ? "#{@first_name} #{@middle_name} #{@last_name}" : "#{@first_name} #{@last_name}"
  end

  def give_raise!(amount)
     amount > 1.0 ? @salary += amount : @salary = @salary * (1 + amount)
  end

  def ==(e)
    @first_name == e.first_name
    @middle_name == e.middle_name
    @last_name == e.last_name
    @email == e.email
    @phone_number == e.phone_number
    @salary == salary
  end

  def import_employee_review(filename)
    input = File.open(filename, "r")
    temp_array = input.readlines("\n")
    reg = /\b#{@first_name}\b/i
    temp_array.each  {|s| @review += s.gsub("\n", "") if s.match(reg)}
  end

end
