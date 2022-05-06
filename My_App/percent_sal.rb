class Percent_sal < Fix_sal
  def initialize fixed, add_percent
    super fixed
    @add_percent = add_percent
  end

  def get_salary
    case [0, 1].sample
    when 0
      super
    when 1
      super + (super * @add_percent) / 100
    end
  end

end
