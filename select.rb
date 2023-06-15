def select(array)
  counter = 0
  selection = []
  while counter < array.size
    current = array[counter]
    selection << current if yield(current)
    counter += 1
  end
  selection
end
