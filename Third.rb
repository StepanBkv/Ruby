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
  num.to_s.each_char.map {|elem| elem if elem.to_i >= 3 and elem.to_i % 2 == 1}.size
end

puts method_2(13)