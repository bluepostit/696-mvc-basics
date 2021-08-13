class TaskRepository
  # State
  # - list of tasks

  # Behavior
  # - add a task
  # - remove a task
  # - get all tasks (list)

  def initialize
    @tasks = []
  end

  def add(task)
    @tasks << task
  end

  def remove(index)
    @tasks.delete_at(index)
  end

  def all
    @tasks
  end
end
