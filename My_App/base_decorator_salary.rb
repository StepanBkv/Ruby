class Base_decorator_salary < Salary


  def initialize component
    self.component = component
  end

  def get_salary
  end

  private def component=(component)
    @component = component
  end

  protected def component
    @component
  end

end

