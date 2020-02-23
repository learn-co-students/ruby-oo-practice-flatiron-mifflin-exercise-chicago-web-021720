require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'

#Test your code here
mike_heb = Manager.new("Michael Heberle", "Analytics")
mike_heb.hire_employee("Andrew Lysaught", 75000)
mike_heb.hire_employee("Jack Overby", 70000)

puts "Here are the manager:"
p Manager.all
puts "And the employees:"
p Employee.all

caitlin = Manager.new("Caitlin Malone", "Strategy", 30)
caitlin.hire_employee("Jack Overby", 70000)

vince = Manager.new("Vincent Lopez", "Billing", 28)
vince.hire_employee("Georgina Scott", 55000)

puts "Again, the managers:"
print Manager.all
puts "And the average manager age:"
print Manager.average_age
puts "And the employees:"
print Employee.all

mike_heb.hire_employee("Georgina Scott", 55000, true)

Employee.find_by_department("Analytics")

binding.pry
puts "done"