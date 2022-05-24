require 'yaml'
require_relative 'note_list'
require_relative 'post_list'
require_relative 'department_list'
require_relative 'department'
require_relative 'post'
require_relative 'salary'
require_relative 'fix_sal'
require_relative 'base_decorator_salary'
require_relative 'decorator_add_rub'
require_relative 'decorator_add_percent'
require_relative 'decorator_fine'
require_relative 'decorator_premium'
# rub_sal = Rub_percent_sal.new(10000, 13,5000)
# print rub_sal.get_salary

# department_list = Department_list.read_from_txt("./My_App/department_file")
# department_list.each {|i| print i}
# department_list.add_note ["Менеджеры", "89002355541", ["Считать деньги", "Платить программистам"], "./My_App/post_file_manager.yaml"]
# department_list.sort_with_vacant_post
salary = Decorator_add_rub.new(Decorator_add_percent.new(Decorator_fine.new(Decorator_premium.new(Fix_sal.new(40000), 61), 5000),17),10000)

puts salary.get_salary