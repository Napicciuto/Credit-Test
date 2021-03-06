class Customer < ActiveRecord::Base
  
  belongs_to :credit_line
  belongs_to :annual_percentage_rate
  
  has_many :customer_transactions
  accepts_nested_attributes_for :customer_transactions, :reject_if => :all_blank, :allow_destroy => true
  
  attr_accessible :first_name, :last_name, :email, :annual_percentage_rate_id, :credit_line_id, :balance, :start_date, :customer_transactions_attributes
  
  validates :first_name, :last_name, :annual_percentage_rate, :credit_line, :start_date , presence: true
  
  delegate :name, to: :credit_line, prefix: true, allow_nil: true
  delegate :credit_line, to: :credit_line, prefix: true, allow_nil: true
  delegate :name, to: :annual_percentage_rate, prefix: true, allow_nil: true
  delegate :rate, to: :annual_percentage_rate, prefix: true, allow_nil: true  
  
  before_create :create_customer_balance
  
  def full_name
    "%s %s" % [first_name,last_name ] rescue nil
  end
    
  private

    def create_customer_balance
        self.balance = self.credit_line.credit_line
    end
  
end
