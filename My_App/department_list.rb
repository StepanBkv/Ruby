class Department_list < Note_list

  def initialize department_list = []
    @note_list = department_list
  end

  def sort_with_vacant_post
    pred = @note_list[0]
    for i in (1..@note_list.size - 1)
      for j in (1..@note_list.size - 1)
        if pred.get_vacant_post.size > @note_list[j].get_vacant_post.size
          @note_list[j - 1], @note_list[j] = @note_list[j], @note_list[j - 1]
        end
        pred = @note_list[j]
      end
    end
  end

  def Department_list.read_from_txt_post_list file_name_post_list
    Department.read_from_txt_post_list file_name_post_list
  end

  def Department_list.read_from_yaml_post_list file_name_post_list
    Department.read_from_txt_post_list file_name_post_list
  end

  def Department_list.write_to_txt_post_list file_name_post_list, post_list
    Department.write_to_txt_post_list file_name_post_list, post_list
  end

  def Department_list.write_to_yaml_post_list file_name_post_list, post_list
    Department.write_to_yaml_post_list file_name_post_list, post_list
  end

  def Department_list.read_from_txt file_name
    super file_name
  end

  def Department_list.write_to_txt file_name, department_list
    super file_name, department_list
  end

  def Department_list.read_from_YAML file_name
    Department_list.new(super file_name)
  end

  def Department_list.write_to_YAML file_name, department_list
    super file_name, department_list
  end

  def Department_list.split_department_list lst
    note_list = []
    for i in lst
      note_list.push(self.name.split('_')[0].to_sym(new([i.split('Название: ')[1].split('.')[0],
                                                         i.split('Телефон: ')[1].split('.')[0],
                                                         (i.split('Обязанности: ')[1].split('.')[0]),
                                                         (i.split('Название файла с должностями: ')[1].chomp('.'))])))
    end
    self.new(note_list)
  end

end