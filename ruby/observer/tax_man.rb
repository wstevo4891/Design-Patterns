class TaxMan
  def update(changed_employee)
    return unless changed_employee.updates.include?('salary')

    puts "Send #{changed_employee.name} a new tax bill!"
  end
end
