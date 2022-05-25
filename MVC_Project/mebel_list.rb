class Mebel_list < Note_list
  def initialize meb_list = []
    @note_list = meb_list
  end

  def Mebel_list.read_from_YAML file_name
    super file_name
  end
  def Mebel_list.write_to_YAML file_name, off_list
    super file_name, off_list
  end
end
