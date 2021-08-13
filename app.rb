require_relative 'router'
require_relative 'tasks_controller'
require_relative 'task_repository'

repo = TaskRepository.new

tasks_controller = TasksController.new(repo)

router = Router.new(tasks_controller)
router.run
