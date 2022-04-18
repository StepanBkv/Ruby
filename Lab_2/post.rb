require_relative 'department_list'

class Post
  attr_accessor :department, :name, :salary, :vacant

  def initialize department, name, salary, vacant
    @department = department
    @name = name
    @salary = salary
    @vacant = vacant
  end

  def to_s
    "Отдел: #{@department}, название: #{@name}, оклад: #{@salary}р, вакантно: #{@vacant ? "Да" : "Нет"}"
  end

end
