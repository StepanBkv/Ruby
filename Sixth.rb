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