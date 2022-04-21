require 'yaml'

class Note_list
  @choose_note = nil

  def initialize note_list = []
    @note_list = note_list
  end

  def add_note

  end

  def choose_note
    @choose_note
  end

  def choose_note= choose_note
    if choose_note != -1
      @choose_note = choose_note
    else
      if @note_list.empty?
        raise("Невозможно выбрать запись! Список пуст")
      else
        @choose_note = 0
      end
    end
  end

  def get_note
    @note_list[@choose_note]
  end

  def delete_note
    @note_list[@choose_note] = nil
    @note_list.compact!
    self.choose_note = @choose_note - 1
  end

  def size
    size = 0
    for i in @note_list
      size += 1
    end
    size
  end

  def each
    for i in @note_list
      yield i
    end
  end

  def sort
    pred = @note_list[0]
    for i in (1..@note_list.size - 1)
      for j in (1..@note_list.size - 1)
        if pred.name > @note_list[j].name
          @note_list[j - 1], @note_list[j] = @note_list[j], @note_list[j - 1]
        end
        pred = @note_list[j]
      end
    end
  end

  def Note_list.read_from_YAML file_name
    YAML.load_file(file_name)
  end

  def Note_list.write_to_YAML file_name, note_list
    File.write file_name, YAML.dump(note_list)
  end

  def Note_list.write_to_txt file_name, note_list
    f = File.open(file_name, "w+")
    for i in note_list
      f.write("#{i.to_s}\n")
    end
    f.close
  end

  def Note_list.read_from_txt file_name

  end
end
