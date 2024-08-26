# frozen_string_literal: true

def word_break(str, word_dict)
  # Прохожу по строке и разделяю ее на две части
  (1..str.length).each do |i|
    # Беру подстроку str[0...i] и проверяю, есть ли она в словаре
    prefix = str[0...i]

    if word_dict.include?(prefix)
      # Если префикс найден в словаре, проверяю оставшуюся строку рекурсивно
      suffix = str[i..-1]
      if word_break(suffix, word_dict)
        return true
      end
    end
  end
  # Если не удалось разбить строку, возвращаем false
  false
end

# Пример использования
s = "двесотни"
d = %w[две сотни тысячи]

puts word_break(s, d)  # Выведет true
