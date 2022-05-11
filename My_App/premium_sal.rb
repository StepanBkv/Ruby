class Premium_sal < Fix_sal
  def initialize fixed, premium = 13
    super fixed
    @premium = premium
  end

  def get_salary
    super + (super * @premium) / 100
  end
end
