require_relative 'subject'

class Employee
  include Subject

  attr_reader :name, :title, :salary

  def initialize(name, title, salary)
    super
    @name = name
    @title = title
    @salary = salary
  end

  def salary=(new_salary)
    return if @salary == new_salary

    @salary = new_salary
    notify_observers
  end

  def title=(new_title)
    return if @title == new_title

    @title = new_title
    notify_observers
  end
end
