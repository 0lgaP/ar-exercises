require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

class Employee < ActiveRecord::Base
  belongs_to :store
end

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Andy", last_name: "Lindsay", hourly_rate: 120)
@store1.employees.create(first_name: "Haverton", last_name: "Oliviera", hourly_rate: 40)
@store1.employees.create(first_name: "Chris", last_name: "Nally", hourly_rate: 60)
@store1.employees.create(first_name: "Francis", last_name: "Bourgouin", hourly_rate: 110)
@store1.employees.create(first_name: "James", last_name: "Bain", hourly_rate: 120)

@store2.employees.create(first_name: "Kyle", last_name: "Brafslowski", hourly_rate: 66)
@store2.employees.create(first_name: "Stan", last_name: "Marsh", hourly_rate: 77)
@store2.employees.create(first_name: "Eric", last_name: "Cartman", hourly_rate: 30)
@store2.employees.create(first_name: "Kenny", last_name: "McCormic", hourly_rate: 25)
