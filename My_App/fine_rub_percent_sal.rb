class Fine_rub_percent_sal < Rub_percent_sal
  def initialize fixed, add_percent, add_rub, fine
    super fixed, add_percent, add_rub
    @fine = fine
  end

  def get_salary
    super - fine
  end
end
