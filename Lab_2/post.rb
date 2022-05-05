class Post
  attr_accessor :department, :name, :salary, :vacant

  def initialize post_list
    self.department = post_list[0]
    self.name = post_list[1]
    self.salary = post_list[2].to_i
    self.vacant = post_list[3]
  end

  def to_s
    "Отдел: #{@department}. Название: #{@name}. Оклад: #{@salary}р. Вакантно: #{@vacant ? "Да" : "Нет"}."
  end
end

