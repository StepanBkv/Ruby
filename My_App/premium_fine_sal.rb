class Premium_fine_sal < Fine_sal
  def initialize salary, fine, premium
    super salary, fine
    @premium = premium
  end

  def get_salary
    super + @premium
  end
end
