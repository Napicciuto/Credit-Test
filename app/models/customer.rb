class Customer < ActiveRecord::Base
  
  belongs_to :credit_line
  belongs_to :annual_percentage_rate
  
  attr_accessible :first_name, :last_name, :email, :annual_percentage_rate_id, :credit_line_id
  
  def full_name
    "%s %s" % [first_name,last_name ] rescue nil
  end
end
