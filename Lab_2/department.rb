class Department
  attr_accessor :name
  attr_accessor :phone

  @@count_object = 0
  @@departmnet_array = []

  def initialize name, phone
    @name = name
    if valid_phone phone
      @phone = phone
    else
      raise("Некорректный номер телефона!")
    end

    @@count_object += 1
    @duty = []
    @@departmnet_array.push(self)
  end

  def Department.get_count_object
    @@count_object
  end
  def Department.get_department_array
    @@departmnet_array
  end
  def duty= str
    @duty.push(str)
  end

  def duty_dedicated= count
    @duty_dedicated = count
  end

  def deleted_duty_dedicated
    @duty[@duty_dedicated] = nil
    @duty.compact!
    @duty_dedicated = nil
  end

  def text_duty_dedicated
    @duty[@duty_dedicated]
  end

  def text_duty_dedicated= (str)
    @duty[@duty_dedicated] = str
  end

  def show_duty_all
    for i in @duty do
      yield i
    end
  end

  def show_data
    [@name, @phone]
  end

  def valid_phone phone
    phone =~ /(\+7||8)[0-9]{10}/
  end

  def Department.read_from_txt file_name
    f = File.new(file_name)
    lst = f.read.split("\n")
    f.close
    lst.map { |i| Department.new(i.split[0], i.split[1]) }
  end

end

#Person_1 = Department.new("Степан", "89002355541")
# Person_2 = Department.new("Андрей", "89382425742")
# Person_3 = Department.new("Виктор", "89286455841")
# Person_3.duty = "Программист"
# Person_3.duty = "DevOps"
# Person_3.duty = "Аналитик"
# Person_3.duty_dedicated = 0
# Person_3.deleted_duty_dedicated
# Person_3.show_duty_all { |i| puts i }

Department.read_from_txt "department_file"
# print Department.get_department_array
Department.get_department_array[0]
Department.get_department_array[0].show_duty_all {|i| print i}