require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'


@olga = Employee.create(first_name: "Olga", last_name: "Perron", hourly_rate: 160, store_id: 1)
puts "Exercise 8"
puts "----------"

puts @olga.password
p @olga
