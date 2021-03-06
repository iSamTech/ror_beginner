=begin
Квадратное уравнение.
Пользователь вводит 3 коэффициента a, b и с. Программа вычисляет дискриминант (D) и корни уравнения (x1 и x2, если они есть) и выводит значения дискриминанта и корней на экран. При этом возможны следующие варианты:
  Если D > 0, то выводим дискриминант и 2 корня
  Если D = 0, то выводим дискриминант и 1 корень (т.к. корни в этом случае равны)
  Если D < 0, то выводим дискриминант и сообщение "Корней нет"
Подсказка: Алгоритм решения с блок-схемой (www.bolshoyvopros.ru). Для вычисления квадратного корня, нужно использовать  
 
Math.sqrt
 Например,
Math.sqrt(16)
  вернет 4, т.е. квадратный корень из 16.
=end


# Запрашиваем входящие данные для уравнения
puts "Введите значение a."
a = gets.to_f

puts "Введите значение b."
b = gets.to_f

puts "Введите значение c."
c = gets.to_f


# Расчитываем Дискриминант
d = b**2 - 4 * a * c


# Получив Дискриминант высчитываем необходимый вариант, квадратный корень и X1&X2
if  d > 0
  m = Math.sqrt(d)
  puts "Дискриминант уравнения равен #{d}. Уравнение имеет 2 корня: x1 = #{(- b + m) / 2 * a} и х2 = #{(- b - m) / 2 * a}." 
elsif d == 0
  puts "Дискриминант уравнения равен 0. Уравнение имеет 1 корень: x1 = x2 = #{(- b) / 2 * a}" 
else
  puts "Дискриминант уравнения отрицательный. Уравнение не имеет корней."
end

  


