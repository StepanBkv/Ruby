class Fine_percent_sal < Percent_sal
  def initialize fixed, add_percent, fine
    super fixed, add_percent
    @fine = fine
  end

  def get_salary
    salary = super
    salary - @fine
  end
end
