require_relative 'composite_task'
require_relative 'add_dry_ingredients_task'
require_relative 'add_liquids_task'
require_relative 'mix_task'

class MakeBatterTask < CompositeTask
  def self.call
    new.call
  end

  def initialize
    super('Make batter')
  end

  def call
    self << AddDryIngredientsTask.new
    self << AddLiquidsTask.new
    self << MixTask.new
    self
  end
end
