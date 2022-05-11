class Premium_sal < Fix_sal
  def initialize fixed, premium
    super fixed
    @premium = premium
  end

  def get_salary
    super + @premium
  end
end
