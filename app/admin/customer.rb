ActiveAdmin.register Customer do     
  index do                            
    column :full_name                             
    column :annual_percentage_rate do |apr|
      link_to "#{apr.annual_percentage_rate_name } - #{number_to_percentage apr.annual_percentage_rate_rate}", admin_annual_percentage_rate_path(apr.annual_percentage_rate)
    end        
    column :credit_line do |cl|
      link_to "#{cl.credit_line_name } - #{number_to_currency cl.credit_line_credit_line}", admin_credit_line_path(cl.credit_line)
    end            
    column :balance                         
    default_actions                   
  end                                 

  form partial: "form"
  
  show title: "Customers and Transactions" do
     panel "Customer Information" do
       attributes_table_for resource do
         row(:full_name) 
         row(:email)
         row(:annual_percentage_rate) { link_to "#{resource.annual_percentage_rate_name } - #{number_to_percentage resource.annual_percentage_rate_rate}", admin_annual_percentage_rate_path(resource.annual_percentage_rate) }
         row(:credit_line) { link_to "#{resource.credit_line_name } - #{number_to_currency resource.credit_line_credit_line}", admin_credit_line_path(resource.credit_line) }
         row(:created_at) 
         row(:updated_at)
       end
     end
     panel "Transactions Features" do
       table_for resource.customer_transactions do 
           column(:debit) { |ct| ct.debit }
           column(:amount) { |ct| ct.amount }
           column(:date) { |ct| ct.date }
       end
     end
     

   end
                       
end                                   

