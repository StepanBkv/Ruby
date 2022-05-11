class Premium_rub_sal < Rub_sal
  def initialize fixed, add_rub, premium = 13
    super fixed, add_rub
    @premium = premium
  end

  def get_salary
    super + (super * @premium) / 100
  end
end
