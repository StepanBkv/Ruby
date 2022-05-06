require 'yaml'
require_relative 'note_list'
require_relative 'post_list'
require_relative 'department_list'
require_relative 'department'
require_relative 'post'
require_relative 'salary'
require_relative 'fix_sal'
require_relative 'rub_sal'
require_relative 'percent_sal'
require_relative 'rub_percent_sal'


rub_sal = Rub_percent_sal.new(10000, 13,5000)
print rub_sal.get_salary

# department_list = Department_list.read_from_txt("./My_App/department_file")
# department_list.add_note ["Менеджеры", "89002355541", ["Считать деньги", "Платить программистам"], "./My_App/post_file_manager.yaml"]
# department_list.sort_with_vacant_post
