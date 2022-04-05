# Вариант7. Задачи 1, 9, 18
# 1. Дана строка. Необходимо найти общее количество русских символов.
# Прошёл всю строку, чтобы каждый символ сверять русский он или нет.
# Так как если отдадим всю строку на проверку, регулярка не сработает
# Надо спросить.
def russian_char_size str
  #str.each_char {|char| char if /[а-яА-Я]/.match(char)}.size
  str.scan(/[а-яА-Я]*/).inject { |sum = "", i| sum + i }.size
end

#print russian_char_size str = "ааааadsdsвввв"
# 9. Дана строка. Необходимо проверить образуют ли строчные
# символы латиницы палиндром.

def polindrom str
  str == str.reverse
end

#print polindrom str = "ada"
# 18. Найти в тексте даты формата «день.месяц.год».

def form_date str
  str.scan(/([0-3][0-9]\.[0-1][0-2]\.[0-9]{4})/)
end

#print form_date str = "32.12.1231 fdd 12.12.4231"

#Вариант 7. Задачи 1, 9, 18
# 1.1 Дана строка. Необходимо найти максимальное из имеющихся в
# ней вещественных чисел.
def max_real_number str
  str.scan(/[0-9]*\.[0-9]*/).map(&:to_f).max
end

#print max_real_number str = "0.5d 13.52wewds434232.5231"
#1.9 Дана строка. Необходимо найти минимальное из имеющихся в ней
# рациональных чисел.
def min_real_number str
  str.scan(/[0-9]*\.[0-9]*/).map(&:to_f).min
end

#print min_real_number str = "0.5d 13.52wewds434232.5231"
# 1.18 Дана строка. Необходимо найти наибольшее количество идущих
# подряд цифр.
def row_number_max str
  str.scan(/[0-9]*/).collect{|i| i.size if i != ""}.compact.max
end

#print row_number_max str = "1232145213wdwdw12312dssa123dsd1dsa122421ds"

def seach_february_date str
  str.scan(/[0-3][0-9] [а-я]* [0-9]{4}/)
end

print seach_february_date str = "23 февраля 2014 аыфы32 йцуйв 23вфы dsd 23 июля 2015 цйфвцйвыф123 уц уцй 24 мая 2013"