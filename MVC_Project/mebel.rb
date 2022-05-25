require_relative 'mebel_list'
class Mebel
  attr_accessor :name, :price, :col

  def initialize meb_lst
    self.name = meb_lst[0]
    self.price = meb_lst[1]
    self.col = meb_lst[2]
    self.number = meb_lst[3]
  end

  def number= number
    if number =~ /\d{4}/ and number.size == 4
      @number = number
    else
      raise "Некорректный номер мебели!"
    end
  end

  def number
    @number
  end
end
