require_relative 'tasks_view'
require_relative 'task'

class TasksController
  # State
  # - tasks repository
  # - tasks view

  # Behavior
  # - list all tasks
  # - add a task
  # - remove a task
  # - mark a task as done

  def initialize(task_repository)
    @task_repository = task_repository
    @tasks_view = TasksView.new
  end

  def list
    # get all tasks from repository
    # send them to the view to display them
    tasks = @task_repository.all
    @tasks_view.list(tasks)
  end

  def add
    # get task name from user!
    # create new Task object (instance)
    # send to repository
    name = @tasks_view.ask_user_for_name
    task = Task.new(name)
    @task_repository.add(task)
  end

  def delete
    # list all the tasks
    # get user input: index! which task to delete
    # send index to repository to delete that task
    list
    index = @tasks_view.ask_user_for_index
    @task_repository.remove(index)
  end

  def mark_as_done
    # list all the tasks
    # ask user for index: which task to mark
    # get the Task with that index (from repository)
    # mark that Task as done!
    list
    index = @tasks_view.ask_user_for_index
    task = @task_repository.all[index]
    task.mark_as_done!
  end
end
