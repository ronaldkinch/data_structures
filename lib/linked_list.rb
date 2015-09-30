class Node
  attr_accessor(:value, :link)
  def initialize(value = nil)
    @value = value
    @link = nil
  end

  def to_s
    this.inspect
  end
end

class LinkedList
  attr_reader(:length)
  def initialize
    @head = Node.new(:HEAD)
    @length = 0
  end

  def to_s
    output = []
    temp = @head
    until temp.link.nil?
      output << temp.link.value
      temp = temp.link
    end
    output.join(", ")
  end

  def insert(node, index = 0)
    temp = @head
    index = validate_index(index)
    index.times do
      temp = temp.link
    end
    node.link = temp.link
    temp.link = node
    @length += 1
    @head
  end

  def search(desired)
    temp = @head
    index = 0
    @length.times do
      temp = temp.link
      return index if temp.value == desired
      index += 1
    end
    nil
  end

  def remove(desired)
    temp = @head
    @length.times do
      if temp.link.value == desired
        @length -= 1
        out_node = temp.link
        temp.link = out_node.link
        out_node.link = nil
        return out_node
      end
      temp = temp.link
      return nil if temp.link.nil?
    end
    nil
  end

  private

  def validate_index(index)
    index = 0 if index == :HEAD || index == :first
    index = @length if index == :last
    0 <= index && index <= @length ? index : @length
  end
end
