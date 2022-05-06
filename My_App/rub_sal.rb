class Rub_sal < Fix_sal
  def initialize fixed, add_rub
    super fixed
    @add_rub = add_rub
  end

  def get_salary
    super + @add_rub
  end
end
