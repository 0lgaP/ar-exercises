require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

Stores.create(name: 'Surrey', 
              annual_revenue: 224000, 
              mens_apparel: false,
              womens_apparel: true)

Stores.create(name: 'Whistler', 
              annual_revenue: 1900000, 
              mens_apparel: true,
              womens_apparel: false)

Stores.create(name: 'Yaletown',
              annual_revenue: 430000,
              mens_apparel: true,
              womens_apparel: true)

@mens_stores = Stores.where(mens_apparel: true, womens_apparel: false)

@womens_stores = Stores.where("mens_apparel = ? AND womens_apparel = ? AND annual_revenue < ?", false, true, 1000000)

puts "--------------------------"

@mens_stores.each do |store|
  puts "\n"
  puts "#{store.name} only sells men's clothing and has a an annual revenue of #{store.annual_revenue}"
  puts "\n"
end

@womens_stores.each do |store|
  puts "\n"
  puts "#{store.name} only  sells women's clothing and generates less than 1M annualy"
  puts "\n"
end
