require_relative 'task'

class FillPanTask < Task
  def initialize
    super('Fill pan')
  end

  # 1 minute to fill the pan evenly
  def get_time_required
    1.0
  end
end
