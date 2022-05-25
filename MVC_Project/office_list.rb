require_relative 'note_list'
require_relative 'office'
require_relative 'mebel_list'
require_relative 'mebel'
require 'yaml'

class Office_list < Note_list
  def initialize off_list = []
    @note_list = off_list
  end

  def Office_list.read_from_YAML file_name
    super file_name
  end

  def Office_list.write_to_YAML file_name, off_list
    super file_name, off_list
  end
end

# Office_list.write_to_YAML('MVC_Project/office_file.yaml',
#                           [Office.new(['Офис 1', '0001', Mebel.new(['Диван', 40000, 3, '0001'])]),
#                            Office.new(['Офис 2', '0002', Mebel.new(['Стулья', 20000, 10, '0003'])]),
#                            Office.new(['Офис 3', '0003', Mebel.new(['Шкафы', 9000, 1, '0002'])])])