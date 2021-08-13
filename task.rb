class Task
  # State
  # - name
  # - done status

  # Behavior
  # - get name
  # - get done?
  # - mark as done!

  attr_reader :name

  def initialize(name)
    @name = name
    @done = false
  end

  def done?
    @done
  end

  def mark_as_done!
    @done = true
  end
end
