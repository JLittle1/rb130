class Series
  def initialize(sequence)
    @sequence = sequence
  end

  def slices(length)
    raise ArgumentError unless length <= @sequence.size
    @sequence.chars.map(&:to_i).each_cons(length).to_a
  end
end
