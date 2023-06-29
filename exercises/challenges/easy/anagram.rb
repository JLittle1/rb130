class Anagram
  def initialize(word)
    @word = word
  end

  def match(array)
    array.select do |str|
      str.upcase.chars.sort == @word.upcase.chars.sort &&
        str.upcase != @word.upcase
    end
  end
end
