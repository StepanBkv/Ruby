class Department_list < Note_list

  def initialize department_list = []
    @note_list = department_list
  end

  def Department_list.read_from_txt file_name
    super file_name
  end

  def read_from_txt_post_list file_name_post_list
    Department.read_from_txt_post_list file_name_post_list
  end

  def read_from_yaml_post_list file_name_post_list
    Department.read_from_txt_post_list file_name_post_list
  end

  def write_to_txt_post_list file_name_post_list, post_list
    Department.write_to_txt_post_list file_name_post_list, post_list
  end

  def write_to_yaml_post_list file_name_post_list, post_list
    Department.write_to_yaml_post_list file_name_post_list, post_list
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

end