class DNA
  def initialize(sequence)
    @sequence = sequence
  end

  def hamming_distance(comparison)
    differences = 0
    [@sequence.size, comparison.size].min.times do |idx|
      differences += 1 unless @sequence[idx] == comparison[idx]
    end
    differences
  end
end
