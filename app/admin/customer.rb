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
    column "" do |customer|
      actions = ""
      actions += link_to "Transactions", resource_path(customer), class: :member_link
      actions += link_to "Edit", edit_admin_customer_path(customer), class: :member_link
      actions += link_to "Delete", resource_path(customer), method: :delete, confirm: "Are you sure want to delete this user?", class: :member_link
      actions.html_safe
    end                   
  end                                 

  form partial: "form"
  
  show do 
    render "show"
  end
  
                       
end                                   

