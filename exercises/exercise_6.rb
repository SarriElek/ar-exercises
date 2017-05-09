require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...


@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Edurne", last_name: "Berastegi", hourly_rate: 80)
@store1.employees.create(first_name: "Javier", last_name: "Kimball", hourly_rate: 40)
@store1.employees.create(first_name: "Anne", last_name: "Berastegi", hourly_rate: 60)
@store1.employees.create(first_name: "Nikole", last_name: "Berastegi", hourly_rate: 60)

@store2.employees.create(first_name: "Elvis", last_name: "Chan", hourly_rate: 40)
@store2.employees.create(first_name: "Charles", last_name: "Chou", hourly_rate: 40)
@store2.employees.create(first_name: "Alvin", last_name: "NG", hourly_rate: 60)
@store2.employees.create(first_name: "John", last_name: "Burks", hourly_rate: 60)
@store2.employees.create(first_name: "Nikola", last_name: "Tesla", hourly_rate: 40)
