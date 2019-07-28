require_relative 'composite_task'
require_relative 'make_batter_task'
require_relative 'fill_pan_task'
require_relative 'bake_task'
require_relative 'frost_task'
require_relative 'lick_spoon_task'

class MakeCakeTask < CompositeTask
  def self.call
    new.call
  end

  def initialize
    super('Make cake')
  end

  def call
    self << MakeBatterTask.call
    self << FillPanTask.new
    self << BakeTask.new
    self << FrostTask.new
    self << LickSpoonTask.new
    self
  end
end
