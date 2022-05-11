class Premium_rub_percent_sal < Rub_percent_sal
  def initialize fixed, add_percent, add_rub, premium = 13
    super fixed, add_percent, add_rub
    @premium = premium
  end

  def get_salary
    super + (super * @premium) / 100
  end

end
