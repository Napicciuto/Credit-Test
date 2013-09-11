class CreditLine < ActiveRecord::Base
  
  has_many :customers
  
  attr_accessible :name, :credit_line
  
  validates :credit_line, :name, presence: true
   
end
