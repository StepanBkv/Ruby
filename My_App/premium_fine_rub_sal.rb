class Premium_fine_rub_sal < Fine_rub_sal
  def initialize fixed, add_rub, fine_rub, premium
    super fixed, add_rub, fine_rub
    @premium = premium
  end

  def get_salary
    super + @premium
  end
end
