# Класс «Ссылка», разновидность базового класса «Запись»
class Link < Post
  def initialize
    super

    @url = ''
  end

  def read_from_console
    puts "Введите ссылку:"
    @url = STDIN.gets.chomp

    puts "Введите описание ссылки:"
    @text = STDIN.gets.chomp
  end

  def to_strings
    time_string = "Создано: #{@created_at.strftime('%Y.%m.%d, %H:%M:%S')} \n"

    [@url, @text, time_string]
  end
end
