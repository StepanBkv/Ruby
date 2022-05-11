class Premium_rub_percent_sal < Rub_percent_sal
  def initialize fixed, add_percent, add_rub, premium
    super fixed, add_percent, add_rub
    @premium = premium
  end

  def get_salary
    super + @premium
  end

end
