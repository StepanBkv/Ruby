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


