class Department
  attr_accessor :name
  attr_accessor :phone
  @@count_object = 0
  @duty = []
  @duty_dedicated

  def initialize name, phone
    @name = name
    @phone = phone
    @@count_object += 1
  end

  def Department.get_count_object
    @@count_object
  end

  def duty=str
    unless @duty.nil?
      @duty.push(str)
    else
      @duty = [str]
    end
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
    @duty
  end

  def show_date
    [@name, @phone]
  end
end

Person_1 = Department.new("Степан", "89002355541")
Person_2 = Department.new("Андрей", "89382425742")
Person_3 = Department.new("Виктор", "89286455841")
Person_3.duty= "Программист"
Person_3.duty= "DevOps"
Person_3.duty= "Аналитик"
Person_3.duty_dedicated = 0
Person_3.deleted_duty_dedicated
print Person_3.show_duty_all