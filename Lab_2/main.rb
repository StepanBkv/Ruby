require 'yaml'
require_relative 'note_list'
require_relative 'post_list'
require_relative 'department_list'
require_relative 'department'
require_relative 'post'

department_list = Department_list.read_from_txt("./Lab_2/department_file")
department_list.add_note ["Менеджеры", "89002355541", ["Считать деньги", "Платить программистам"], "./Lab_2/post_file.yaml"]
department_list.each do |i|
  puts i.show_data
end
