class Decorator_add_rub < Base_decorator_salary
  def initialize component, add_rub
    super component
    @add_rub = add_rub
  end

  def get_salary
    self.component.get_salary + @add_rub
  end
end
