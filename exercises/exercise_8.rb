require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 8"
puts "----------"


employee = @store1.employees.create(first_name: "JJJJJJ", last_name: "VVVVV", hourly_rate: 60)
puts employee.password


