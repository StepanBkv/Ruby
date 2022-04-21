class Post
  attr_accessor :department, :name, :salary, :vacant

  def initialize department, name, salary, vacant
    self.department = department
    self.name = name
    self.salary = salary
    self.vacant = vacant
  end

  def to_s
    "Отдел: #{@department}. Название: #{@name}. Оклад: #{@salary}р. Вакантно: #{@vacant ? "Да" : "Нет"}."
  end
end

