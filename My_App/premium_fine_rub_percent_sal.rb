class Premium_fine_rub_percent_sal < Fine_rub_percent_sal
  def initialize fixed, add_percent, add_rub, fine, premium
    super fixed, add_percent, add_rub, fine
    @premium = premium
  end

  def get_salary
    super + @premium
  end

end
