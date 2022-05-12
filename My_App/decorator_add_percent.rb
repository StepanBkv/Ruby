class Decorator_add_percent < Base_decorator_salary
  def initialize component, add_percent
    super component
    @add_percent = add_percent
  end

  def get_salary
    case [0, 1].sample
    when 1
      self.component.get_salary * (1 + @add_percent / 100.0)
    when 0
      self.component.get_salary
    end
  end
end
