require_relative 'employee'

fred = Employee.new('Fred', 'Crane Operator', 30_000.0)
puts "Fred's salary: #{fred.salary}"

puts 'Observing Fred...'
fred.add_observer do |changed_employee|
  puts "Cut a new check for #{changed_employee.name}"
  puts "His salary is now #{changed_employee.salary}!"
  puts "Send #{changed_employee.name} a new tax bill!"
end

puts "Updating Fred's salary"
fred.salary = 35_000.0

puts "Fred's salary: #{fred.salary}"

fred.salary = 90_000.0
