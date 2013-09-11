class AnnualPercentageRate < ActiveRecord::Base
  
  has_many :customers
  
  attr_accessible :name, :rate
  
end
