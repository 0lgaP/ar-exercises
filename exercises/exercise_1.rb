require_relative '../setup'

puts "Exercise 1"
puts "----------"

class Store < ActiveRecord::Base
  has_many :employees

  validates :name, length: {minimum: 3}
  validates :annual_revenue, length: {minimum: 0}
            :apparel_type?
  
  def apparel_type?
    if :mens_apparel || :womens_apparel
      true
    end
  end

end

Store.create(name: 'Burnaby', 
              annual_revenue: 300000, 
              mens_apparel: true,
              womens_apparel: true)

Store.create(name: 'Richmond', 
              annual_revenue: 1260000, 
              mens_apparel: false,
              womens_apparel: true)

Store.create(name: 'Gastown', 
              annual_revenue: 190000, 
              mens_apparel: true,
              womens_apparel: false)

puts Store.count