require 'observer'

# Uses the built-in Ruby Observable module
class Employee
  include Observable

  attr_reader :name, :title, :salary

  def initialize(name, title, salary)
    @name = name
    @title = title
    @salary = salary
  end

  def salary=(new_salary)
    return if @salary == new_salary

    @salary = new_salary
    changed
    notify_observers(self)
  end

  def title=(new_title)
    return if @title == new_title

    @title = new_title
    changed
    notify_observers(self)
  end
end
