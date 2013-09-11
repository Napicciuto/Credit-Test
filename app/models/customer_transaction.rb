class CustomerTransaction < ActiveRecord::Base
  
  belongs_to :customer
  
  attr_accessible :customer_id, :debit, :amount, :date
  
  validates :debit, :amount, :date, presence: true
    

end

