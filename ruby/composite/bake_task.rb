require_relative 'task'

class BakeTask < Task
  def initialize
    super('Bake the cake')
  end

  # 1 hour to bake the cake
  def get_time_required
    60.0
  end
end
