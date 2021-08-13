class Stack
  # State
  # - the items (plates)

  # Behavior
  # - add an item to the end (push)
  # - remove the last item (pop)
  # FILO - First In, Last Out

  def initialize
    @items = []
  end

  def push(item)
    @items << item
  end

  def pop
    @items.delete_at(-1)
  end
end

plates = Stack.new
plates.push('dinner plate')
p plates
plates.push('side plate')
p plates

plates.pop
p plates


# Array is super-charged already!
fruits = %w[mango cherry apple banana]
fruits.push('peach')
p fruits

fruits.pop
p fruits
