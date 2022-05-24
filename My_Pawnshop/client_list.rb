class Client_list < Note_list
  def initialize note_list = []
    @note_list =  note_list
  end

  def Client_list.read_from_YAML file_name
    super file_name
  end

  def Client_list.write_to_YAML file_name, note_list
    super file_name, note_list
  end
end


