class Queue
  Node = Struct.new(:value, :priority, :next, :prev)
  attr_reader(:size)
  def initialize
    @size = 0
    @tail = nil
    @head = nil
  end

  def enqueue(value, priority=5)
    enq = Node.new(value, priority, nil, nil)
    if @head.nil?
      @tail = enq
      @head = enq
    else
      if @head.priority >= enq.priority
        enq.next = @head
        @head.prev = enq
        @head = enq
      else
        temp = @head.next
        loop do
          if temp.nil?
            enq.prev = @tail
            @tail.next = enq
            @tail = enq
            return @head
          else
            if temp.priority >= enq.priority
              enq.next = temp.prev.next
              enq.prev = temp.prev
              temp.prev.next = enq
              temp.prev = enq
              return @head
            end
            temp = temp.next
          end
        end
      end
    end
  end

  def dequeue
    return nil if @tail.nil?
    deq = @tail
    if deq.prev.nil?
      @head = nil
      @tail = nil
    else
      deq.prev.next = nil
      @tail = deq.prev
    end
    [deq.value, deq.priority]
  end

  def to_s
    output = []
    temp = @head
    until temp.nil?
      output << "value: #{temp.value} priority: #{temp.priority}"
      temp = temp.next
    end
    output.join(", ")
  end
end
