class Office
  attr_accessor :name
  attr_reader :number
  def initialize off_lst
    self.name = off_lst[0]
    self.number = off_lst[1]
    self.mebel_list = off_lst[2]
  end

  def to_s
    "#{self.name}, #{self.number}"
  end

  def number= number
    if number =~ /\d{4}/ and number.size == 4
      @number = number
    else
      raise "Некорректный номер офиса!"
    end
  end

  def mebel_list= mebel_list
    @mebel_list = Mebel_list.new(mebel_list)
  end

  def mebel_list
    @mebel_list
  end
end
