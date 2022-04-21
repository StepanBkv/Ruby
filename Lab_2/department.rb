require 'yaml'
require_relative 'post_list'

class Department
  attr_accessor :name
  attr_reader :phone
  @@count_object = 0

  def initialize name, phone, duty, post_list = Post_list.new
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
    @Post_list.get_vacant_post
  end

  def get_all_post
    @Post_list.get_all_post
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

  def show_duty_all
    "Обязанности: #{@duty.join(", ")}."
  end

  def to_s
    "#{self.show_data}. #{self.show_duty_all}"
  end

  def show_data
    "Название: #{@name}. Телефон: #{@phone}"
  end

  def valid_phone phone
    (phone =~ /(8){1}[0-9]{10}/ and phone.size == 11) |
      (phone =~ /\+7{1}[0-9]{10}/ and phone.size == 12) |
      (phone =~ /[0-9]{10}/ and phone.size == 10)
  end

  def Department.read_from_txt_post_list post_list_name_file
    Post_list.read_from_txt post_list_name_file
  end

  def Department.read_from_yaml_post_list post_list_name_file
    Post_list.read_from_YAML post_list_name_file
  end

  def Department.write_to_txt_post_list post_list_name_file, post_list
    Post_list.write_to_txt post_list_name_file, post_list
  end

  def Department.write_to_yaml_post_list post_list_name_file, post_list
    Post_list.write_to_YAML post_list_name_file, post_list
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
#                             ["Разработка сайтов", "Обслуживание сервера"], Post_list.read_from_YAML("post_file.yaml"))
# puts department.get_all_post