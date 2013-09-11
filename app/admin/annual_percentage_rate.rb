ActiveAdmin.register AnnualPercentageRate do     
  
  menu parent: "Credit Tools", priority: 1    
  
  index do                            
    column :name                     
    column :rate        
    column :updated_at           
    column :created_at             
    default_actions                   
  end                                 

  filter :email                       

  form do |f|                         
    f.inputs "Annual Percentage Rate Infomation" do       
      f.input :name                  
      f.input :rate               
    end                               
    f.actions                         
  end               
end