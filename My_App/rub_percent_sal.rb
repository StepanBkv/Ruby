class Rub_percent_sal < Percent_sal
  def initialize fixed, add_percent, add_rub
    super fixed, add_percent
    @add_rub = add_rub
  end

  def get_salary
    super + @add_rub
  end
end
