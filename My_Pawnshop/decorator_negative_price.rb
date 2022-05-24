class Decorator_negative_price < Base_decorator_price
  def initialize component, negative
    @component = component
    @negative = negative
  end

  def get_price
    self.component.get_price - @negative
  end

end
