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

class TableClient < FXMainWindow
  def initialize app
    super(app, "Данные клиентов", :width => 1000, :height => 200)
    # hFrame1 = FXHorizontalFrame.new(self)
    # chrLabel = FXLabel.new(hFrame1, "Label_1:")
    # chrTextField = FXTextField.new(hFrame1, 4)
    # hFrame2 = FXHorizontalFrame.new(self)
    # specialChrsCheck = FXCheckButton.new(hFrame2, "Check Box")
    # vFrame1 = FXVerticalFrame.new(self, :opts => LAYOUT_FILL)
    # textArea = FXText.new(vFrame1, :opts => LAYOUT_FILL | TEXT_READONLY | TEXT_WORDWRAP)
    # hFrame3 = FXHorizontalFrame.new(vFrame1)
    # generateButton = FXButton.new(hFrame3, "Button_1")
    # generateButton_2 = FXButton.new(hFrame3, "Button_2")
    # copyButton = FXButton.new(hFrame3, "Copy to clipboard")
    cl_lst = Client_list.read_from_YAML('My_Pawnshop/client_list.yaml')
    table = FXTable.new(self, :opts => LAYOUT_FILL)
    table.setTableSize(cl_lst.size, 6)
    # # cl_lst.each{|i| table.setitemText(1, , i.to_s)}
    j = -1
    for i in cl_lst
      puts i.to_s
      table.setColumnText(0, 'Фамилия')
      table.setColumnText(1, 'Имя')
      table.setColumnText(2, 'Отчество')
      table.setColumnText(3, 'Номер телефона')
      table.setColumnText(4, 'Серия')
      table.setColumnText(5, 'номер')
      table.setRowText(j + 1, (j + 2).to_s)
      table.setItemText(j + 1, 0, i.surname)
      table.setItemText(j + 1, 1, i.name)
      table.setItemText(j + 1, 2, i.middlename)
      table.setItemText(j + 1, 3, i.phone)
      table.setItemText(j + 1, 4, i.series)
      table.setItemText(j + 1, 5, i.number)
      j += 1
      # table.setItemJustify(1, 1, FXTableItem::CENTER_X)
    end
    # table.setItemJustify(2, 1, FXTableItem::CENTER_X)
    # spanning_item = table.getItem(2, 1)
    # table.setItem(2, 2, spanning_item)
    # table.setItem(2, 3, spanning_item)
    # table.setItem(3, 1, spanning_item)
    # table.setItem(3, 2, spanning_item)
    # table.setItem(3, 3, spanning_item)
  end

  def create
    super
    show PLACEMENT_SCREEN
  end
end

db = Database.open 'My_Pawnshop/pawnshop_db'
# db.execute "CREATE TABLE client(client_id INTEGER PRIMARY KEY, name TEXT NOT NULL,
#             surname TEXT NOT NULL, middlename TEXT NOT NULL, phone INTEGER NOT NULL, series INTEGER NOT NULL,
#             number INTEGER NOT NULL)"
cl_lst = Client_list.read_from_YAML('My_Pawnshop/client_list.yaml')
# cl_lst.each{ |i| db.execute "INSERT INTO client(name, surname, middlename, phone, series, number)
# VALUES(?, ?, ?, ?, ?, ?)", i.name, i.surname, i.middlename, i.phone, i.series, i.number }
db_list =  db.execute "SELECT * from client"
print db_list.size
# if __FILE__ == $0
#   FXApp.new do |app|
#     TableClient.new app
#     app.create
#     app.run
#   end
# end
#
# Client_list.write_to_YAML('My_Pawnshop/client_list.yaml', Client_list.new([(Client.new(['Степан', 'Бабаков', "Евгеньевич", "89002355541", "2345", "342562"])),
#                                                            (Client.new(['Степан', 'Бабаков', "Евгеньевич", "89002355541", "2345", "342562"]))]))
# cl_lst = Client_list.read_from_YAML('My_Pawnshop/client_list.yaml')
# cl_lst.each { |i| puts i }
