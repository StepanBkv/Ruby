class Post
  attr_accessor :department, :name, :salary, :vacant

  def initialize department, name, salary, vacant
    self.department = department
    self.name = name
    self.salary = salary
    self.vacant = vacant
  end

  def to_s
    "Отдел: #{@department}, название: #{@name}, оклад: #{@salary}р, вакантно: #{@vacant ? "Да" : "Нет"}"
  end

  def Post.read_from_YAML file_name
    YAML.load_file(file_name)
  end

  def Post.read_from_txt file_name
    f = File.new(file_name)
    lst = f.read.split("\n")
    f.close
    post_list = []
    for i in lst
      post = Post.new(i.split('Отдел: ')[1].to_s.split(',')[0], i.split('название: ')[1].to_s.split(',')[0],
                      i.split('оклад: ')[1].to_s.split[0], "Да" == i.split('вакантно: ')[1])
      post_list.push(post)
    end
    post_list
  end

  def Post.write_to_txt file_name, post_list
    f = File.open(file_name, "w+")
    for i in post_list
      f.write("#{print i}\n")
    end
    f.close
  end

  def Post.write_to_YAML file_name, post_list
    File.write file_name, YAML.dump(post_list)
  end

end

