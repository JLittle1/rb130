class Element
  attr_reader :datum, :next

  def initialize(datum, n = nil)
    @datum = datum
    @next = n
  end

  def tail?
    self.next.nil?
  end
end

class SimpleLinkedList
  def self.from_a(arr)
    linked_list = new
    arr&.reverse_each { |el| linked_list.push(el) }
    linked_list
  end

  attr_reader :head

  def size
    size = 0
    el = head
    while el
      size += 1
      el = el.next
    end
    size
  end

  def empty?
    head.nil?
  end

  def push(el)
    new_head = Element.new(el, head)
    @head = new_head
  end

  def peek
    head&.datum
  end

  def pop
    popped = head
    @head = head.next
    popped.datum
  end

  def to_a
    array = []
    el = head
    while el
      array.push(el.datum)
      el = el.next
    end
    array
  end

  def reverse
    SimpleLinkedList.from_a(to_a.reverse)
  end
end
