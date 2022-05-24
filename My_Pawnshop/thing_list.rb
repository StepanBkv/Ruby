class Thing_list < Note_list
  def initialize(thing_list = nil)
    @note_list = thing_list
  end

  def Thing_list.read_from_YAML file_name
    super file_name
  end

  def Thing_list.write_to_YAML file_name, thing_list
    super file_name, thing_list
  end
end
