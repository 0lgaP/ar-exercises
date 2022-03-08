require_relative '../setup'
require_relative './exercise_1'
# require_relative './exercise_2'

class Employee < ActiveRecord::Base
  belongs_to :store

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, :inclusion => 40..200


  before_create :password_gen

  private
  def password_gen
    self.password = ('a'..'z').to_a.shuffle[0,8].join
  end

  
end

@olga = Employee.create(first_name: "Olga", last_name: "Perron", hourly_rate: 160, store_id: 1, password: "apples")
puts "Exercise 8"
puts "----------"
p @olga
