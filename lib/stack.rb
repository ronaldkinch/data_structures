class Stack
  Node = Struct.new(:value, :link)
  def initialize
    @head = nil
  end

  def push(value)
    @head = Node.new(value, @head)
  end

  def pop
    fail "EmptyStackError" if @head.nil?
    value = @head.value
    @head = @head.link
    value
  end
end
