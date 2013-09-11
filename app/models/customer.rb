class Customer < ActiveRecord::Base
  
  belongs_to :credit_line
  belongs_to :annual_percentage_rate
  
  has_many :customer_transactions
  accepts_nested_attributes_for :customer_transactions, :reject_if => :all_blank, :allow_destroy => true
  
  attr_accessible :first_name, :last_name, :email, :annual_percentage_rate_id, :credit_line_id, :customer_transactions_attributes
  
  delegate :name, to: :credit_line, prefix: true, allow_nil: true
  delegate :credit_line, to: :credit_line, prefix: true, allow_nil: true
  delegate :name, to: :annual_percentage_rate, prefix: true, allow_nil: true
  delegate :rate, to: :annual_percentage_rate, prefix: true, allow_nil: true  
  
  def full_name
    "%s %s" % [first_name,last_name ] rescue nil
  end
end
