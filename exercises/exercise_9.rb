require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'
require_relative './exercise_8'
puts "EX 9_______________________________________________________________________________________"

if @store1.destroy
  puts "----------------------------------DELETED TEST 1-------------"
  puts "Store destroyed! It has #{@store1.employees.size} =/"
  puts "-----------------------------------------------"
else
  puts "----------------------------------DELETED TEST 1-------------"
  puts "Could not destroy store :)"
  puts "-----------------------------------------------"

end


# Make sure empty stores can be destroyed
@empty_store = Store.create!(name: 'Test Empty Store', annual_revenue: 0)
if @empty_store.destroy
  puts "----------------------------------DELETED TEST 2-------------"
  puts "Empty Store destroyed! This is good"
  puts "-----------------------------------------------"

else
  puts "----------------------------------DELETED TEST 2-------------"
  puts "Whoa! Empty store should be destroyable... Not cool!"
  puts "-----------------------------------------------"

end