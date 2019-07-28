require 'observer'

# Uses the built-in Ruby Observable module
class Employee
  include Observable

  attr_reader :name, :title, :salary, :updates

  def initialize(name, title, salary)
    @name = name
    @title = title
    @salary = salary
    @updates = []
  end

  def salary=(new_salary)
    return if @salary == new_salary

    @salary = new_salary
    @updates << 'salary'
    update
  end

  def title=(new_title)
    return if @title == new_title

    @title = new_title
    @updates << 'title'
    update
  end

  def update
    changed
    notify_observers(self)
    @updates = []
  end
end
