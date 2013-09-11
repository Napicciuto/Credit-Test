ActiveAdmin.register Customer do     
  index do                            
    column :full_name                             
    column :rate           
    column :credit             
    column :balance             
    default_actions                   
  end                                 

  form partial: "form"
                       
end                                   

