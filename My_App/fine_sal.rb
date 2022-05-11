class Fine_sal < Fix_sal
  def initialize salary, fine
    super salary
    @fine = fine
  end

  def get_salary
    super - @fine
  end

end
