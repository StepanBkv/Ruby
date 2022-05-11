class Premium_percent_sal < Percent_sal
  def initialize fixed, add_percent, premium
    super fixed, add_percent
    @premium = premium
  end

  def get_salary
    super + @premium
  end
end
