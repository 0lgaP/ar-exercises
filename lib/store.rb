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
