require_relative 'task'

class LickSpoonTask < Task
  def initialize
    super('Lick the spoon')
  end

  # 1 minute to lick the spoon
  def get_time_required
    1.0
  end
end
