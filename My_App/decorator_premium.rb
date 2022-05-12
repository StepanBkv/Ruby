class Decorator_premium < Base_decorator_salary
  def initialize component, premium
    super component
    @premium = premium
  end

  def get_salary
    self.component.get_salary * (1 + (@premium / 100.0))
  end
end
