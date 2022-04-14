require './Lab_2/department.rb'

class Department_list < Department
  def initialize
    @department_array = []
  end

  def Department_list.read_from_YAML file_name
    @departmnet_array = super file_name
  end

  def Department_list.read_from_txt file_name
    @departmnet_array = super file_name
  end

  def Department_list.write_to_txt file_name, department_array
    super file_name, department_array
  end

  def Department_list.write_to_YAML file_name, department_array
    super file_name, department_array
  end
end

department_array = Department_list.read_from_txt "./Lab_2/department_file"
department_array.push(Department.new("Менеджеры", "89321324425", "Старший менеджер"))
#print department_array
Department_list.write_to_YAML "./Lab_2/department_file.yaml", department_array
#department_array = Department_list.read_from_txt "./Lab_2/department_file"
#print department_array