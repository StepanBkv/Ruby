require 'yaml'
require_relative 'note_list'
require_relative 'client'
require_relative 'client_list'
require 'fox16'


# Client_list.write_to_YAML('My_Pawnshop/client_list.yaml', Client_list.new([(Client.new(['Степан', 'Бабаков', "Евгеньевич", "89002355541", "2345", "342562"])),
#                                                            (Client.new(['Степан', 'Бабаков', "Евгеньевич", "89002355541", "2345", "342562"]))]))
# cl_lst = Client_list.read_from_YAML('My_Pawnshop/client_list.yaml')
# cl_lst.each { |i| puts i }
