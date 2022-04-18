require_relative 'post'

class Post_list < Post
  @choose_note = nil

  def initialize post_list
    @post_list = post_list
  end

  def add_note post, name, salary, vacant
    @post_list.push(Post.new(post, name, salary, vacant))
  end

  def choose_note= choose_note
    if choose_note != -1
      @choose_note = choose_note
    else
      if @post_list.empty?
        raise("Невозможно выбрать запись! Список пуст")
      else
        @choose_note = 0
      end
    end
  end

  def get_note
    @post_list[@change_note]
  end

  def change_note department, name, salary, vacant
    @post_list[@choose_note] = Post.new(department, name, salary, vacant)
  end

  def delete_note
    @post_list[@choose_note] = nil
    @post_list.compact!
    #дописать недопускание выкдывания exseption
    self.choose_note = @choose_note - 1
  end

  def size
    size = 0
    for i in @post_list
      size += 1
    end
    size
  end

  def sort
    pred = @post_list[0]
    for i in (1..@post_list.size - 1)
      for j in (1..@post_list.size - 1)
        if pred.name > @post_list[j].name
          @post_list[j - 1], @post_list[j] = @post_list[j], @post_list[j - 1]
        end
        pred = @post_list[j]
      end
    end
  end

  def Post_list.read_from_YAML file_name
    YAML.load_file(file_name)
  end

  def Post_list.read_from_txt file_name
    f = File.new(file_name)
    lst = f.read.split("\n")
    f.close
    post_list = []
    for i in lst
      post = Post.new(i.split('Отдел: ')[1].to_s.split[0], i.split('название: ')[1].to_s.split[0],
                      i.split('оклад: ')[1].to_s.split[0], "Да" == i.split('вакантно: ')[1])
      post_list.push(post)
    end
    post_list
  end

  def Post_list.write_to_txt file_name, post_list
    f = File.open(file_name, "w+")
    for i in post_list
      f.write("#{print i}\n")
    end
    f.close
  end

  def Post_list.write_to_YAML file_name, post_list
    File.write file_name, YAML.dump(post_list)
  end

  def each
    for i in @post_list
      yield i
    end
  end

end

post_list = Post_list.read_from_txt('./Lab_2/post_file')
Post_list.write_to_YAML('./Lab_2/post_file.yaml', post_list)
post_list = Post_list.read_from_YAML('./Lab_2/post_file.yaml')
print post_list