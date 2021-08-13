class Router
  # State
  # - controller

  # Behavior
  # - run (loop: get user action choice)

  def initialize(tasks_controller)
    @tasks_controller = tasks_controller
  end

  def run
    loop do
      # display menu of actions
      # ask user to choose
      # dispatch the action
      show_menu
      action = user_choice
      dispatch(action)
    end
  end

  private

  def show_menu
    puts "--- Task Manager ---"
    puts "1. List your tasks"
    puts "2. Add a new task"
    puts "3. Mark a task as done"
    puts "4. Delete a task"
  end

  def user_choice
    puts "Please enter your choice by number:"
    gets.chomp.to_i
  end

  def dispatch(action)
    case action
    when 1 then @tasks_controller.list
    when 2 then @tasks_controller.add
    when 3 then @tasks_controller.mark_as_done
    when 4 then @tasks_controller.delete
    end
  end
end
