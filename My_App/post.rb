class Post
  attr_accessor :department, :name, :vacant

  def initialize post_list
    self.department = post_list[0]
    self.name = post_list[1]
    self.salary = post_list[2].to_i
    self.vacant = post_list[3]
  end

  def to_s
    "Отдел: #{self.department}. Название: #{self.name}. Оклад: #{self.salary}р. Вакантно: #{self.vacant ? "Да" : "Нет"}."
  end

  def salary
    @salary
  end

  def salary= salary

  end

end

