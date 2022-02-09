def sum_char str
  sum = 0
  str.to_s.each_char do |num|
    sum += num.to_i
  end
  sum
end

def multiplex_char str
  sum = 1
  str.to_s.each_char do |num|
    sum *= num.to_i
  end
  sum
end

def max_char str
  max = 0
  str.to_s.each_char do |num|
    if max < num.to_i
      max = num.to_i
    end
  end
  max
end

def min_char str
  min = 10
  str.to_s.each_char do |num|
    if min < num.to_i
      min = num.to_i
    end
  end
  min
end

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


