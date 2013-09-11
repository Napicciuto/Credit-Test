ActiveAdmin.register CreditLine do     
  
  menu parent: "Credit Tools", priority: 2   
  
  index do                            
    column :name                     
    column :credit_line        
    column :updated_at           
    column :created_at             
    default_actions                   
  end                                 

  form do |f|                         
    f.inputs "Credit Line" do       
      f.input :name                  
      f.input :credit_line               
    end                               
    f.actions                         
  end                                 
end