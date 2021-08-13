class TasksView
  # State
  # - nothing

  # Behavior
  # - get user input
  # - display output to user
  # - list all tasks

  def list(tasks)
    tasks.each_with_index do |task, index|
      done = task.done? ? '✅' : '❌'
      puts "#{index + 1}. #{done} #{task.name}"
    end
  end

  def ask_user_for_name
    puts "Please enter the task's name:"
    gets.chomp
  end

  def ask_user_for_index
    puts "Please enter the task's number:"
    gets.chomp.to_i - 1
  end
end
