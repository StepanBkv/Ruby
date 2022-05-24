class Client

  attr_accessor :name, :surname, :middlename

  def initialize cli_list
    self.name = cli_list[0]
    self.surname = cli_list[1]
    self.middlename = cli_list[2]
    self.phone = cli_list[3]
    self.series = cli_list[4]
    self.number = cli_list[5]
    self.thing = cli_list[6]
  end

  def phone= phone
    if valid_phone phone
      @phone = phone
    else
      raise('Не верный номер телефона!')
    end
  end

  def phone
    @phone
  end

  def series
    @series
  end

  def series= series
    if series =~ /\d{4}/ and series.size == 4
      @series = series
    else
      raise('Не правильная серия паспорта!')
    end
  end

  def number
    @number
  end

  def number= number
    if number =~ /\d{6}/ and number.size == 6
      @number = number
    else
      raise('Не правильный номер паспорта!')
    end
  end

  def valid_phone phone
    (phone =~ /(8){1}[0-9]{10}/ and phone.size == 11) |
      (phone =~ /\+7{1}[0-9]{10}/ and phone.size == 12) |
      (phone =~ /[0-9]{10}/ and phone.size == 10)
  end

  def to_s
    "Имя: #{self.name}. Фамилия: #{self.surname}. Отчество: #{self.middlename}. Номер телефона: #{self.phone}. Серия паспорта: #{self.series}. Номер паспорта: #{self.number}"
  end

end