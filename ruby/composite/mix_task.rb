require_relative 'task'

class MixTask < Task
  def initialize
    super('Mix that batter up!')
  end

  # Mix for 3 minutes
  def get_time_required
    3.0
  end
end
