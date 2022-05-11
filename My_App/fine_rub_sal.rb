class Fine_rub_sal < Rub_sal
  def initialize fixed, add_rub, fine_rub
    super fixed, add_rub
    @fine_rub = fine_rub
  end

  def get_salary
    super - @fine_rub
  end

end
