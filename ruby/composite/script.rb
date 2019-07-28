require_relative 'make_cake_task'

puts "Let's make a cake!"
task = MakeCakeTask.call

puts 'Time required for making a cake'
puts task.get_time_required

puts 'Total number of basic tasks'
puts task.total_number_basic_tasks

puts 'Making the cake...'
task.perform_sub_tasks

puts 'The cake is done!'
