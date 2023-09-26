Rails.application.routes.draw do
  # Routes for the Category resource:

  # CREATE
  post("/insert_category", { :controller => "categories", :action => "create" })
          
  # READ
  get("/categories", { :controller => "categories", :action => "index" })
  
  get("/categories/:path_id", { :controller => "categories", :action => "show" })
  
  # UPDATE
  
  post("/modify_category/:path_id", { :controller => "categories", :action => "update" })
  
  # DELETE
  get("/delete_category/:path_id", { :controller => "categories", :action => "destroy" })

  #------------------------------

  # Routes for the Employee account:

  # SIGN UP FORM
  get("/employee_sign_up", { :controller => "employee_authentication", :action => "sign_up_form" })        
  # CREATE RECORD
  post("/insert_employee", { :controller => "employee_authentication", :action => "create"  })
      
  # EDIT PROFILE FORM        
  get("/edit_employee_profile", { :controller => "employee_authentication", :action => "edit_profile_form" })       
  # UPDATE RECORD
  post("/modify_employee", { :controller => "employee_authentication", :action => "update" })
  
  # DELETE RECORD
  get("/cancel_employee_account", { :controller => "employee_authentication", :action => "destroy" })

  # ------------------------------

  # SIGN IN FORM
  get("/employee_sign_in", { :controller => "employee_authentication", :action => "sign_in_form" })
  # AUTHENTICATE AND STORE COOKIE
  post("/employee_verify_credentials", { :controller => "employee_authentication", :action => "create_cookie" })
  
  # SIGN OUT        
  get("/employee_sign_out", { :controller => "employee_authentication", :action => "destroy_cookies" })
             
  #------------------------------

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
