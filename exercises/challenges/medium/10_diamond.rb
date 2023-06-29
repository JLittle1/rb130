class Diamond
  def self.make_diamond(letter)
    result = ''
    width = ((letter.ord - 65) * 2) + 1
    ('A'..letter).each do |char|
      result << write_line(char, width)
    end
    ('A'...letter).reverse_each do |char|
      result << write_line(char, width)
    end
    result
  end

  class << self
    private

    def write_line(char, width)
      if char == 'A'
        "#{char.center(width)}\n"
      else
        spaces = ((char.ord - 65) * 2) - 1
        spaces = ' ' * spaces
        line = (char + spaces + char).center(width)
        "#{line}\n"
      end
    end
  end
end
