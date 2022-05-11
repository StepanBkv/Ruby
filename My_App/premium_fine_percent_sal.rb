class Premium_fine_percent_sal < Fine_percent_sal
  def initialize fixed, add_percent, fine_percent, premium = 13
    super fixed, add_percent, fine_percent
    @premium = premium
  end

  def get_salary
    super + (super * @premium) / 100
  end
end
