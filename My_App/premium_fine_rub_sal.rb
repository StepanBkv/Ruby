class Premium_fine_rub_sal < Fine_rub_sal
  def initialize fixed, add_rub, fine_rub, premium = 13
    super fixed, add_rub, fine_rub
    @premium = premium
  end

  def get_salary
    super + (super * @premium) / 100
  end
end
