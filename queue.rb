class Queue
  # State
  # - items

  # Behavior
  # - add to the end of the queue (enqueue)
  # - remove from the start of the queue (dequeue)

  def initialize
    @items = []
  end

  def enqueue(item)
    @items << item
  end

  def dequeue
    @items.delete_at(0)
  end
end

queue = Queue.new
queue.enqueue('horse')
queue.enqueue('chicken')
queue.enqueue('rabbit')
p queue

queue.dequeue
p queue
