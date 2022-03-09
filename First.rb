#puts "Hello #{#ARGV[0]}"
# 7 Variant
# 1 Задание
puts ("Hello world")
# 2 Задание
#username = "Stepan"
#puts"Привет, #{username}!"
puts "Привет, #{ARGV[0]}!"
# 3 задание
puts "Какой твой любимый язык программирования #{ARGV[0]}"
 lang = gets.chomp.strip
 lang.capitalize!
 case lang
   when "Ruby"
   puts "Подлиза)))))"
   when "Python"
   puts "Нормально, нормально. Но скоро будет Ruby"
   when "C++"
   puts "Жесть. Но скоро будет Ruby)"
   when "R"
   puts "Статист значит. Но скоро будет Ruby"
   when "JS"
   puts "Извращюга. Но Ruby лучше)"
   when "C#"
   puts "Скоро будет Ruby"
   when "PHP"
   puts "ъеъ. Skoro budet Руби"
 else
   puts "Такого языка нет("
 end
# 4 задание
 puts "Введите команду на Ruby!"
 input = gets.chomp.strip
 eval input
 puts "Введите командную строку своей ОС!"
 input = gets.chomp.strip
 system input
