class Premium_fine_rub_percent_sal < Fine_rub_percent_sal
  def initialize fixed, add_percent, add_rub, fine, premium = 13
    super fixed, add_percent, add_rub, fine
    @premium = premium
  end

  def get_salary
    super + (super * @premium) / 100
  end

end
