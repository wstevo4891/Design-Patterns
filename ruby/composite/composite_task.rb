require_relative 'task'

class CompositeTask < Task
  def initialize(name)
    super(name)
    @sub_tasks = []
  end

  def []=(index, new_value)
    @sub_tasks[index] = new_value
  end

  def <<(task)
    @sub_tasks << task
    task.parent = self
  end

  def remove_sub_task(task)
    @sub_tasks.delete(task)
    task.parent = nil
  end

  def get_time_required
    time = 0.0
    @sub_tasks.each { |task| time += task.get_time_required }
    time
  end

  def total_number_basic_tasks
    total = 0
    @sub_tasks.each { |task| total += task.total_number_basic_tasks }
    total
  end

  def perform_sub_tasks
    @sub_tasks.each do |task|
      puts task.name

      next unless task.is_a? CompositeTask

      task.perform_sub_tasks
    end
  end
end
