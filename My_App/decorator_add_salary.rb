class Decorator_add_salary < Base_decorator_salary
  def initialize component, add_rub
    super component
    @add_rub = add_rub
  end

  def get_salary
    if @add_rub.has_key?('add_percent') and @add_rub.has_key?('add_rub')
      return self.rub_pecent_sal super
    end
    if @add_rub.has_key?('add_percent')
      return self.percent_sal super
    end
    if @add_rub.has_key?('add_rub')
      return self.salary.get_salary + self.rub_sal
    end
  end

  private def rub_sal
    @add_rub['add_rub']
  end

  private def percent_sal salary
    case [0, 1].sample
    when 0
      salary
    when 1
      salary + (salary * @add_rub['add_percent']) / 100
    end
  end

  private def rub_pecent_sal salary
    self.percent_sal salary + self.rub_sal
  end
end
