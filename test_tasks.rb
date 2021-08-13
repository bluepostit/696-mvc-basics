require_relative 'task'
require_relative 'task_repository'
require_relative 'tasks_controller'

walk_dog = Task.new('walk the dog')

# Marking a task as done
puts "#{walk_dog.name} is done? #{walk_dog.done?}"
walk_dog.mark_as_done!
puts "#{walk_dog.name} is done? #{walk_dog.done?}"


buy_milk = Task.new('buy milk')

# Create new TaskRepository
repo = TaskRepository.new
p repo
repo.add(walk_dog)
repo.add(buy_milk)
puts "Repo tasks:"
repo.all.each { |task| puts task.name }

# repo.remove(0)
puts "Repo tasks:"
repo.all.each { |task| puts task.name }

puts "\n\n\n----- controller -----\n"

# Create new TasksController
controller = TasksController.new(repo)
controller.list

controller.add
controller.list
puts "\n----- controller delete ------\n"
controller.delete
controller.list

puts "\n----- controller mark as done ------\n"
controller.mark_as_done
controller.list
