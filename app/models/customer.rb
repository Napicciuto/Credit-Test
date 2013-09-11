class Customer < ActiveRecord::Base
  
  attr_accessible :first_name, :last_name, :email, :rate, :credit
  
  def full_name
    "%s %s" % [first_name,last_name ] rescue nil
  end
end
