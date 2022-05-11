class Premium_fine_sal < Fine_sal
  def initialize salary, fine, premium = 13
    super salary, fine
    @premium = premium
  end

  def get_salary
    super + (super * @premium) / 100
  end
end
