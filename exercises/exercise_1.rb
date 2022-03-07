require_relative '../setup'
puts "Exercise 1"
puts "----------"

class Stores < ActiveRecord::Base

  validates :name, length: {minimum: 3}
  validates :annual_revenue, length: {minimum: 0}
            :apparel_type?
  
  def apparel_type?
    if :mens_apparel || :womens_apparel
      true
    end
  end

end

Stores.create(name: 'Burnaby', 
              annual_revenue: 300000, 
              mens_apparel: true,
              womens_apparel: true)

Stores.create(name: 'Richmond', 
              annual_revenue: 1260000, 
              mens_apparel: false,
              womens_apparel: true)

Stores.create(name: 'Gastown', 
              annual_revenue: 190000, 
              mens_apparel: true,
              womens_apparel: false)

puts Stores.count