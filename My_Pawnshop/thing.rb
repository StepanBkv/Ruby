class Thing
  @@number = 0
  attr_reader :number

  def initialize thing_lst
    @@number += 1
    @number = @@number
    @name = thing_lst[0]
    self.price = Decorator_comis.new(FiX_pri.new(thing_lst[0]), thing_lst[1])
  end

  def price= thing_lst

  end
end
