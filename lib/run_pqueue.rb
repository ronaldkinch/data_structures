require_relative "pqueue.rb"

queue = Queue.new
queue.enqueue "a"
queue.enqueue "b", 4
queue.enqueue "c", 6
queue.enqueue "d"
p queue.to_s
p queue.dequeue
p queue.dequeue
p queue.dequeue
p queue.dequeue
p queue.dequeue
