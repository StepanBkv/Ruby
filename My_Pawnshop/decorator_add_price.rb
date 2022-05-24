class Decorator_add_price < Base_decorator_price
  def initialize component, add
    @component = component
    @add = add
  end

  def get_price
    self.component.get_price - @add
  end
end
