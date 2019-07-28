require_relative 'make_cake_task'

puts "Let's make a cake!"
task = MakeCakeTask.call

puts 'Total number of sub tasks'
puts taks.get_time_required

puts 'Total number of basic tasks'
puts tasks.total_number_basic_tasks

puts 'Making the cake...'
task.perform_sub_tasks
