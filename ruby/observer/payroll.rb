class Payroll
  def update(changed_employee)
    notify_salary(changed_employee)
    notify_title(changed_employee)
  end

  def notify_salary(changed_employee)
    return unless changed_employee.updates.include?('salary')

    puts "Cut a new check for #{changed_employee.name}"
    puts "His salary is now #{changed_employee.salary}!"
  end

  def notify_title(changed_employee)
    return unless changed_employee.updates.include?('title')

    puts "#{changed_employee.name} is getting a promotion"
    puts "His title is now #{changed_employee.title}!"
  end
end
