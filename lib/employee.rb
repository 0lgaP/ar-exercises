class Employee < ActiveRecord::Base
  belongs_to :store
  # before create -> we can see the password in the create action
  # before_create :password_gen

  # after create -> we can only see password if we ask for it or if we look up the employee
  after_create :password_gen

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, :inclusion => 40..200
  
  def password_gen
    self.password = ('a'..'z').to_a.shuffle[0,8].join
  end
  
end