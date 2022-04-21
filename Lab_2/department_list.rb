require_relative 'department'
require_relative 'note_list'

class Department_list < Note_list

  def initialize department_list = []
    @note_list = department_list
  end

  def add_note name, phone, duty
    @department_list.push(Department.new(name, phone, duty))
  end

  def change_note name, phone, duty
    @department_list[@choose_note] = Department.new(name, phone, duty)
  end

  def Department_list.read_from_txt file_name
    lst = super file_name
    departmnet_list = []
    for i in lst
      departmet = Department.new(i.split('Название: ')[1].split('.')[0],
                                 i.split('Телефон: ')[1].split('.')[0],
                                 (i.split('Обязанности: ')[1].chomp('.')))
      departmnet_list.push(departmet)
    end
    Department_list.new(departmnet_list)
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

department_list = Department_list.read_from_txt('./Lab_2/department_file')
department_list.each {|i| puts i}

