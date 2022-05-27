# 1 Написать методы, которые находят минимальный,
# максимальный элементы, сумму и произведение элементов.
# Каждая операция в отдельном методе. Решить задачу с
# помощью циклов.
def max_el lst
  max = 0
  for i in lst
    if i > max
      max = i
    end
  end
  max
end

def min_el lst
  min = Float::MAX.to_i
  for i in lst
    if i < min
      min = i
    end
  end
  min
end

def sum_el lst
  sum = 0
  for i in lst
    sum += i
  end
  sum
end

def mulple_el lst
  sum = 1
  for i in lst
    sum *= i
  end
  sum
end

puts "Какую функцию вы хотите выполнить? \n 1. Макс.ел. \n 2. Мин.ел. \n 3. Сумм.ел. \n 4. Перемножение ел."
print "Введите: "
fun = gets.chomp.strip.to_i
puts "Откуда читать файл? \n 1. С клавиатуры \n 2. Из файла"
print "Введите: "
ls = gets.chomp.strip.to_i

case ls
when 1
  lst = gets.chomp.strip.split(',').map(&:to_i)

when 2
  print "Введите название файла: "
  file_name = gets.chomp.strip
  f = File.new(file_name)
  lst = f.read.split(',').map(&:to_i)
  f.close
end

case fun
when 1
  puts max_el lst
when 2
  puts min_el lst
when 3
  puts sum_el lst
when 4
  puts mulple_el lst
end

