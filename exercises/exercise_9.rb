require_relative '../setup'
puts "EX 9_______________________________________________________________________________________"

class Store < ActiveRecord::Base
  has_many :employees, :dependent => :restrict_with_error
  before_destroy :check_for_employees

  validates :name, length: {minimum: 3}
  validates :annual_revenue, length: {minimum: 0}
            :apparel_type?
  
  def apparel_type?
    if :mens_apparel || :womens_apparel
      true
    end
  end
  private
  def check_for_employees
    if employees.size > 0
      return false
    end
  end

end

class Employee < ActiveRecord::Base
  belongs_to :store

  
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, :inclusion => 40..200
  
  before_save :password_gen

  private
  def password_gen
    self.password = ('a'..'z').to_a.shuffle[0,8].join
  end

  
end

Store.create(name: 'Burnaby', 
              annual_revenue: 300000, 
              mens_apparel: true,
              womens_apparel: true)

@store1 = Store.find(1)

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Andy", last_name: "Lindsay", hourly_rate: 120)
@store1.employees.create(first_name: "Haverton", last_name: "Oliviera", hourly_rate: 40)
@store1.employees.create(first_name: "Chris", last_name: "Nally", hourly_rate: 60)
@store1.employees.create(first_name: "Francis", last_name: "Bourgouin", hourly_rate: 110)
@store1.employees.create(first_name: "James", last_name: "Bain", hourly_rate: 120)
puts "----------------------------------DELETEDDDD>>????"
# Make sure non-empty stores cannot be destroyed

if @store1.destroy

  puts "Store destroyed! It has #{@store1.employees.size} =/"
else

  puts "Could not destroy store :)"
end

puts "----------------------------------DELETEDDDD>>????"
# Make sure empty stores can be destroyed
@empty_store = Store.create!(name: 'Test Empty Store', annual_revenue: 0)
if @empty_store.destroy

  puts "Empty Store destroyed! This is good"
else

  puts "Whoa! Empty store should be destroyable... Not cool!"
end