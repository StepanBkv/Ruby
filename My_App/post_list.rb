class Post_list < Note_list

  def initialize post_list = []
    @note_list = post_list
  end

  def get_vacant_post
    vacant_post_list = []
    for i in @note_list
      if i.vacant == FALSE
        vacant_post_list.push(i)
      end
    end
    vacant_post_list
  end

  def get_all_post
    @note_list.each { |i| i.to_s }
  end

  def Post_list.read_from_YAML file_name
    Post_list.new(super file_name)
  end

  def Post_list.read_from_txt file_name
    super file_name
  end

  def Post_list.write_to_txt file_name, post_list
    super file_name, post_list
  end

  def Post_list.write_to_YAML file_name, post_list
    super file_name, post_list
  end

  def Post_list.split_post_list lst
    note_list = []
    for i in lst
      note_list.push(self.name.split('_')[0].send(new([i.split('Отдел: ')[1].split(".")[0],
                                                  i.split('Название: ')[1].split(".")[0],
                                                  /\d+/.match(i.split('Oклад: ').to_s),
                                                  "Да" == /Да|Нет/.match(i.split('Вакантно: ')[1]).to_s])))
    end
    self.new(note_list)
  end

end
