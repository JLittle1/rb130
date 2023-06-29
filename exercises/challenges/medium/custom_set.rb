class CustomSet
  def initialize(arr = [])
    @collection = arr.uniq
  end

  def empty?
    collection.empty?
  end

  def contains?(el)
    collection.include?(el)
  end

  def subset?(other)
    collection.all? { |el| other.collection.include?(el) }
  end

  def disjoint?(other)
    collection.none? { |el| other.collection.include?(el) }
  end

  def eql?(other)
    collection.sort == other.collection.sort
  end

  def add(el)
    collection.push(el) unless collection.include?(el)
    self
  end

  def intersection(other)
    intersection = collection.select { |el| other.collection.include?(el) }
    CustomSet.new(intersection)
  end

  def difference(other)
    difference = collection - other.collection
    CustomSet.new(difference)
  end

  def union(other)
    union = collection | other.collection
    CustomSet.new(union)
  end

  def ==(other)
    eql?(other)
  end

  protected

  attr_reader :collection
end
