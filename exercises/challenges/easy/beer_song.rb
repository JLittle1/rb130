class BeerSong
  VERSE_0 = "No more bottles of beer on the wall, no more bottles of beer.\n" \
            "Go to the store and buy some more, 99 bottles of beer on the " \
            "wall.\n"

  VERSE_1 = "1 bottle of beer on the wall, 1 bottle of beer.\n" \
            "Take it down and pass it around, no more bottles of beer on the " \
            "wall.\n"

  VERSE_2 = "2 bottles of beer on the wall, 2 bottles of beer.\n" \
            "Take one down and pass it around, 1 bottle of beer on the wall.\n"

  def self.verse(num)
    case num
    when 0 then VERSE_0
    when 1 then VERSE_1
    when 2 then VERSE_2
    when 3..99
      "#{num} bottles of beer on the wall, #{num} bottles of beer.\n" \
      "Take one down and pass it around, #{num - 1} bottles of beer on the " \
      "wall.\n"
    end
  end

  def self.verses(start, stop)
    verse_arr = (stop..start).map { |num| verse(num) }
    verse_arr.reverse.join("\n")
  end

  def self.lyrics
    verses(99, 0)
  end
end
