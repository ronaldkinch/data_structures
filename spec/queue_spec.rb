require "spec_helper"
require "queue.rb"

describe "queue list" do
  it "has result for valid input" do
    list = Queue.new
    assert_equal list.size, 0
    list.enqueue 3
    assert_equal list.size, 1
    list.enqueue "a"
    assert_equal list.size, 2
    assert_equal list.dequeue, 3
    assert_equal list.size, 1
    assert_equal list.dequeue, "a"
    assert_equal list.size, 0
    assert_raises(RuntimeError){list.dequeue}
    assert_equal list.size, 0
    begin
      list.dequeue
    rescue RuntimeError => re
      assert_equal re.message, "EmptyQueueError"
    end
  end
end
