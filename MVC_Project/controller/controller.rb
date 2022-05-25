require_relative '../model/model'

class Controller
  def initialize
    @model = Model.new
  end

  def get_list_office
    @model.get_list_office
  end
end
