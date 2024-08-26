# frozen_string_literal: true

# Запрос количества случайных элементов
puts "Введите количество случайных элементов:"
print "> "
num_elements = STDIN.gets.to_i

# Запрос верхней границы диапазона (исключительно)
puts "Введите верхнюю границу диапазона (исключительно):"
print "> "
upper_bound = STDIN.gets.to_i
puts '-' * 40

# Проверка корректности ввода
if num_elements <= 0 || upper_bound <= 1
  puts "Ошибка. Убедитесь, что количество элементов больше 0, а верхняя граница больше 1."
else

  # Создание массива случайных чисел
  random_array = Array.new(num_elements) { rand(0...upper_bound) }

  # Вывод результата
  puts random_array.sort
end
