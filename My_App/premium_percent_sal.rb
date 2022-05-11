class Premium_percent_sal < Percent_sal
  def initialize fixed, add_percent, premium = 13
    super fixed, add_percent
    @premium = premium
  end

  def get_salary
    salary = super
    salary + (salary * @premium) / 100
  end
end
