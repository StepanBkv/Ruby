require './Lab_2/department.rb'

class Department_list < Department
  def initialize
    print @department_array = []
  end

  def add_note name, phone, duty
    @name = name, @phone = phone, @duty = duty
    @department_array.push(Department.new(@name, @phone, @duty))
  end
  def get_note change_note = 0
    @department_array[change_note]
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

# department_array = Department_list.read_from_txt "./Lab_2/department_file"
# department_array.push(Department.new("Менеджеры", "89321324425", "Старший менеджер"))
#print department_array
# Department_list.write_to_YAML "./Lab_2/department_file.yaml", department_array
#department_array = Department_list.read_from_txt "./Lab_2/department_file"
#print department_array

department_list = Department_list.new()
department_list.add_note("HR", "89002333321", "Стариший Hr")
print department_list



