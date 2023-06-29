def step(start, finish, step)
  all_steps = []
  until start > finish
    yield start
    all_steps << start
    start += step
  end
  all_steps # Returns an array of all steps. Useful to see what was landed on.
end

p step(1, 10, 3) { |value| puts "value = #{value}" }