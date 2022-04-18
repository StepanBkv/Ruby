require './Lab_2/department.rb'

class Department_list < Department
  @choose_note = nil
  @size = 0

  def initialize department_array
    @department_array = department_array
  end

  def add_note name, phone, duty
    @department_array.push(Department.new(name, phone, duty))
  end

  def choose_note= choose_note
    if choose_note != -1
      @choose_note = choose_note
    else
      if @department_array.empty?
        raise("Невозможно выбрать запись! Список пуст")
      else
        @choose_note = 0
      end
    end
  end

  def get_note
    @department_array[@change_note]
  end

  def change_note name, phone, duty
    @department_array[@choose_note] = Department.new(name, phone, duty)
  end

  def delete_note
    @department_array[@choose_note] = nil
    @department_array.compact!
    #дописать недопускание выкдывания exseption
    self.choose_note = @choose_note - 1
  end

  def size
    size = 0
    for i in @department_array
      size += 1
    end
    size
  end

  def sort
    pred = @department_array[0]
    for i in (1..@department_array.size - 1)
      for j in (1..@department_array.size - 1)
        if pred.name > @department_array[j].name
          @department_array[j - 1], @department_array[j] = @department_array[j], @department_array[j - 1]
        end
        pred = @department_array[j]
      end
    end
  end

  def Department_list.read_from_YAML file_name
    Department_list.new(super file_name)
  end

  def Department_list.read_from_txt file_name
    Departmnet_list.new(super file_name)
  end

  def Department_list.write_to_txt file_name, department_array
    super file_name, department_array
  end

  def Department_list.write_to_YAML file_name, department_array
    super file_name, department_array
  end

  def each
    for i in @department_array
      yield i
    end
  end

end

# department_array = Department_list.read_from_txt "./Lab_2/department_file"
# department_array.push(Department.new("Менеджеры", "89321324425", "Старший менеджер"))
#print department_array
# Department_list.write_to_YAML "./Lab_2/department_file.yaml", department_array
#department_array = Department_list.read_from_txt "./Lab_2/department_file"
#print department_array

department_list = Department_list.read_from_YAML "./Lab_2/department_file.yaml"
department_list.add_note("HR", "89002333321", "Старший Hr")

department_list.each { |i| puts i }
department_list.sort
print "\n"
department_list.each { |i| puts i }


