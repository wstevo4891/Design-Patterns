require_relative 'task'

class AddLiquidsTask < Task
  def initialize
    super('Add liquids')
  end

  # 1 minute to add milk and eggs
  def get_time_required
    1.0
  end
end
