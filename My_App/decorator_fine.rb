class Decorator_fine < Base_decorator_salary
  def initialize component, fine
    super component
    @fine = fine
  end

  def get_salary
    self.component.get_salary - @fine
  end
end
