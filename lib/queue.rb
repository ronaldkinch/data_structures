class Queue
  Node = Struct.new(:value, :next, :prev)
  attr_reader(:size)
  def initialize
    @head = nil
    @tail = nil
    @size = 0
  end

  def enqueue(value)
    enq = Node.new(value, nil, nil)
    @size += 1
    if @head.nil?
      @head = Node.new(nil, enq, nil)
      @tail = Node.new(nil, nil, enq)
    else
      @head.next.prev = enq
      enq.next = @head.next
      @head.next = enq
    end
  end

  def dequeue
    fail "EmptyQueueError" if @head.nil?
    @size -= 1
    deq = @tail.prev
    if deq.prev.nil?
      @head = nil
      @tail = nil
    else
      deq.prev.next = nil
      @tail.prev = deq.prev
    end
    deq.value
  end
end
