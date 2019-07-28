require_relative 'task'

class FrostTask < Task
  def initialize
    super('Frost the cake')
  end

  # 20 minutes to frost the cake
  def get_time_required
    20.0
  end
end
