require 'yaml'
require_relative 'post_list'

class Department
  attr_accessor :name
  attr_reader :phone
  @@count_object = 0

  def initialize name, phone, duty, post_list = Post_list.new()
    self.name = name
    self.phone = phone
    @@count_object += 1
    self.duty = duty
    @Post_list = post_list
  end

  def phone= (phone)
    if valid_phone phone
      @phone = phone
    else
      raise("Некорректный номер телефона!")
    end
  end

  def duty= str
    unless defined? @duty
      if str.is_a?(Array)
        @duty = str
      else
        @duty = [str]
      end
    else
      @duty.push(str)
    end
  end

  def add_post department, name, salary, vacant
    @Post_list.add_note(department, name, salary, vacant)
  end

  def choose_post choose_note
    @Post_list.choose_note = choose_note
  end

  def change_choose_post department, name, salary, vacant
    @Post_list.change_note(department, name, salary, vacant)
  end

  def delete_choose_post
    @Post_list.delete_note
  end

  def get_vacant_post
    vacant_post_list = []
    for i in @Post_list
      if i.vacant == FALSE
        vacant_post_list.push(i)
      end
    end
    vacant_post_list
  end

  def get_all_post
    
  end

  def duty_dedicated= count
    @duty_dedicated = count
  end

  def deleted_duty_dedicated
    @duty[@duty_dedicated] = nil
    @duty.compact!
    unless @duty.empty? and @duty_dedicated != 0
      @duty_dedicated -= 1
    else
      @duty_dedicated == nil
    end
  end

  def text_duty_dedicated
    @duty[@duty_dedicated]
  end

  def text_duty_dedicated= (str)
    @duty[@duty_dedicated] = str
  end

  #ПЕРЕДЕЛАТЬ
  def show_duty_all
    self.to_s { |i, sum = ""| print sum + "" + i }
  end

  # def to_s string_array = []
  #   sum_string = ""
  #   count = 0
  #   if string_array == []
  #     sum_string
  #   else
  #   for i in string_array
  #     if block_given?
  #       if (string_array.size) - 1 != count
  #         sum_string += yield i
  #       else
  #         sum_string += i
  #       end
  #     else
  #       sum_string += i
  #     end
  #     count += 1
  #   end
  #   sum_string
  #   end
  # end

  #ПЕРЕДЕЛАТЬ
  def to_s
    unless block_given?
      "#{@name} #{@phone} duty:#{@duty}"
    else
      sum = ""
      for i in @duty
        yield i + sum
      end
    end
  end

  def show_data
    self.to_s
  end

  def valid_phone phone
    (phone =~ /(8){1}[0-9]{10}/ and phone.size == 11) |
      (phone =~ /\+7{1}[0-9]{10}/ and phone.size == 12) |
      (phone =~ /[0-9]{10}/ and phone.size == 10)
  end

  def Department.get_count_object
    @@count_object
  end

  def Department.valid_phone phone
    (phone =~ /(8){1}[0-9]{10}/ and phone.size == 11) |
      (phone =~ /\+7{1}[0-9]{10}/ and phone.size == 12) |
      (phone =~ /[0-9]{10}/ and phone.size == 10)
  end

  def Department.phone=(phone)
    if Department.valid_phone phone
      @phone = phone
    else
      raise("Некорректный номер телефона!")
    end
  end
end

# department = Department.new("IT-отдел", "89002344421",
#                             "Разработка сайтов", Post_list.read_from_YAML("./Lab_2/post_file.yaml"))
# print department.get_vacant_post