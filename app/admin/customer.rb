ActiveAdmin.register Customer do     
  index do                            
    column :full_name                             
    column :annual_percentage_rate          
    column :credit_line             
    column :balance             
    default_actions                   
  end                                 

  form partial: "form"
                       
end                                   

