factorial = Enumerator.new do |yielder|
  idx = 0
  accumulator = 1
  loop do
    yielder << accumulator
    idx += 1
    accumulator *= idx
  end
end

7.times { p factorial.next }
3.times { p factorial.next }
factorial.rewind
7.times { p factorial.next }
factorial.each_with_index do |value, idx|
  p value
  break if idx > 10
end