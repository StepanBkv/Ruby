class Premium_rub_sal < Rub_sal
  def initialize fixed, add_rub, premium
    super fixed, add_rub
    @premium = premium
  end

  def get_salary
    super + @premium
  end
end
