class Fine_percent_sal < Percent_sal
  def initialize fixed, add_percent, fine_percent
    super fixed, add_percent
    @fine_percent = fine_percent
  end

  def get_salary
    salary = super
    salary - (salary * @fine_percent)/100
  end
end
