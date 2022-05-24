require 'yaml'
require_relative 'note_list'
require_relative 'client'
require_relative 'client_list'
require 'fox16'
require 'sqlite3'
include Fox
include SQLite3
# app = FXApp.new
# main = FXMainWindow.new(app, "First Window", :width => 200, :height => 50)
# app.create
# main.show(PLACEMENT_SCREEN)
# app.run
#
class PasswordGenerator < FXMainWindow
  def initialize app
    super(app, "Window_1", :width => 400, :height => 200)
    hFrame1 = FXHorizontalFrame.new(self)
    chrLabel = FXLabel.new(hFrame1, "Label_1:")
    chrTextField = FXTextField.new(hFrame1, 4)
    hFrame2 = FXHorizontalFrame.new(self)
    specialChrsCheck = FXCheckButton.new(hFrame2, "Check Box")
    vFrame1 = FXVerticalFrame.new(self, :opts => LAYOUT_FILL)
    textArea = FXText.new(vFrame1, :opts => LAYOUT_FILL | TEXT_READONLY | TEXT_WORDWRAP)
    hFrame3 = FXHorizontalFrame.new(vFrame1)
    generateButton = FXButton.new(hFrame3, "Button_1")
    generateButton_2 = FXButton.new(hFrame3, "Button_2")
    copyButton = FXButton.new(hFrame3, "Copy to clipboard")
  end
  # def create
  #   super #show(PLACEMENT_SCREEN)
  # end
end

db = Database.open 'pawnshop_db'
# if __FILE__ == $0
#   FXApp.new do |app|
#     main = PasswordGenerator.new app
#     app.create
#     main.show(PLACEMENT_SCREEN)
#     app.run
#   end
# end


# Client_list.write_to_YAML('My_Pawnshop/client_list.yaml', Client_list.new([(Client.new(['Степан', 'Бабаков', "Евгеньевич", "89002355541", "2345", "342562"])),
#                                                            (Client.new(['Степан', 'Бабаков', "Евгеньевич", "89002355541", "2345", "342562"]))]))
# cl_lst = Client_list.read_from_YAML('My_Pawnshop/client_list.yaml')
# cl_lst.each { |i| puts i }
