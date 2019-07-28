require_relative 'employee'
require_relative 'payroll'
require_relative 'tax_man'

fred = Employee.new('Fred', 'Crane Operator', 30_000.0)
puts "Fred's salary: #{fred.salary}"

puts 'Observing Fred with the Payroll...'
payroll = Payroll.new
fred.add_observer(payroll)

puts 'Observing Fred with the TaxMan...'
tax_man = TaxMan.new
fred.add_observer(tax_man)

puts "Updating Fred's salary"
fred.salary = 35_000.0

puts "Fred's salary: #{fred.salary}"

puts "Updating Fred's title"
fred.title = 'Vice President of Sales'
fred.salary = 90_000.0
