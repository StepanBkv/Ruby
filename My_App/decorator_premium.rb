class Decorator_premium < Base_decorator_salary
  def initialize component, premium
    super component
    @premium = premium
  end

  def get_salary
    salary = self.salary.get_salary
    salary + (salary * @premium) / 100
  end
end
