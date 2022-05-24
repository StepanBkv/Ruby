class Decorator_comis < Base_decorator_price
  def initialize component, comis
    @component = component
    @comis = comis
  end

  def get_price
    self.component.get_price - @comis
  end
end
