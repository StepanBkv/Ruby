class Premium_fine_percent_sal < Fine_percent_sal
  def initialize fixed, add_percent, fine_percent, premium
    super fixed, add_percent, fine_percent
    @premium = premium
  end

  def get_salary
    super + @premium
  end
end
