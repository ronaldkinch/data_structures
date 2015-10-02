require_relative "queue.rb"

queue = Queue.new
queue.enqueue "a"
queue.enqueue "b"
queue.enqueue "c"
p queue.dequeue
p queue.dequeue
p queue.dequeue
3.times { |n| queue.enqueue n }
p queue, queue.size
3.times { p queue.dequeue, queue.size }
p queue.dequeue
