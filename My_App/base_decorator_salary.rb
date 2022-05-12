class Base_decorator_salary < Salary
  attr_accessor :salary
  def initialize component
    self.salary = component
  end

  def get_salary
    self.salary.get_salary
  end
end

