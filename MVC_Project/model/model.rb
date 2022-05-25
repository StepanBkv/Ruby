require_relative '../note_list'
require_relative '../office'
require_relative '../office_list'
require_relative '../mebel_list'
require_relative '../mebel'
require 'yaml'

class Model
  def initialize

  end

  def get_list_office
    lst = Office_list.read_from_YAML('MVC_Project/office_file.yaml')
    lst
  end

  def set_list_office
  end
end