# Метод 1 Найти сумму простых делителей числа.
def just str, num = 2
  if str < 2
    return false
  elsif str == 2
    return true
  elsif str % num == 0
    return false
  elsif num < str / 2
    just(str, num + 1)
  else
    return true
  end
end

def method_1(num)
  (2..num).select {|elem| elem if num  % elem == 0 and just(elem)}.sum
end

# Метод 2 Найти количество нечетных цифр числа, больших 3
def method_2(num)
  num.to_s.each_char.select {|elem| elem if elem.to_i >= 3 and elem.to_i % 2 == 1}.size
end

puts method_2(12)

# Метод 3 Найти произведение таких делителей числа, сумма цифр
# которых меньше, чем сумма цифр исходного числа.
def sum_char str
  sum = 0
  str.to_s.each_char do |num|
    sum += num.to_i
  end
  sum
end

def method_3(num)
  l = (1..num).map {|i| i if num % i == 0}.compact
  l.select {|i| i if sum_char(i) < sum_char(num)}.reduce(:*)
end

puts method_3 15