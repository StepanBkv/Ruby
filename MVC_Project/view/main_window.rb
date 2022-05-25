require 'fox16'
require_relative '../controller/controller'
include Fox

class Main_window < FXMainWindow
    def initialize app
      super(app, "Главное окно", :width => 1000, :height => 200)
      # packer = FXPacker.new(self, :opts => LAYOUT_FILL)
      # child1 = FXButton.new(packer, "Bottom-Right" , :opts => BUTTON_NORMAL|LAYOUT_SIDE_BOTTOM|LAYOUT_RIGHT)
      controller = Controller.new
      list_office = self.get_list_office controller
      table = FXTable.new(self, :opts => LAYOUT_FILL)
      table.setTableSize(list_office.size, 2)
      j = -1
      for i in list_office
        table.setColumnText(0, 'Название оффиса')
        table.setColumnText(1, 'Номер')
        table.setRowText(j + 1, (j + 2).to_s)
        table.setItemText(j + 1, 0, i.name)
        table.setItemText(j + 1, 1, i.number)
        j += 1

      end

    end

    def create
      super
      show PLACEMENT_SCREEN
    end

    def get_list_office controller
      controller.get_list_office
    end
end

if __FILE__ == $0
  FXApp.new do |app|
    Main_window.new app
    app.create
    app.run
  end
end