class Base_decorator_price < Price
  def initialize component
    self.component = component
  end

  def get_price
  end

  private def component=(component)
    @component = component
  end

  protected def component
    @component
  end
end
