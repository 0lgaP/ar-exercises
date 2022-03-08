require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

puts "Add a store"
user_store = gets.chomp.to_s

@new_store = Store.create(name: user_store)

if @new_store.errors.any?
  @new_store.errors.each do |attribute, message|
    puts "\n"
    puts "#{attribute} = #{message}"
    puts "\n"
  end
end