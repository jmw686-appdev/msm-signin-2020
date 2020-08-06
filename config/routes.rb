Rails.application.routes.draw do
  # Routes for the User account:

  # SIGN UP FORM
  get("/user_sign_up", { :controller => "user_authentication", :action => "sign_up_form" })        
  # CREATE RECORD
  post("/insert_user", { :controller => "user_authentication", :action => "create"  })
      
  # EDIT PROFILE FORM        
  get("/edit_user_profile", { :controller => "user_authentication", :action => "edit_profile_form" })       
  # UPDATE RECORD
  post("/modify_user", { :controller => "user_authentication", :action => "update" })
  
  # DELETE RECORD
  get("/cancel_user_account", { :controller => "user_authentication", :action => "destroy" })

  # ------------------------------

  # SIGN IN FORM
  get("/user_sign_in", { :controller => "user_authentication", :action => "sign_in_form" })
  # AUTHENTICATE AND STORE COOKIE
  post("/user_verify_credentials", { :controller => "user_authentication", :action => "create_cookie" })
  
  # SIGN OUT        
  get("/user_sign_out", { :controller => "user_authentication", :action => "destroy_cookies" })
  
  # Bookmarks
  get("/bookmarks", { :controller => "bookmarks", :action => "index" })
  
  post("/insert_bookmark", { :controller => "bookmarks", :action => "create" })

  get("/delete_bookmark/:path_id", { :controller => "bookmarks", :action => "destroy" })
  #------------------------------

  get("/", { :controller => "application", :action => "homepage" })

  # Directors routes 
  get("/directors", { :controller => "directors", :action => "index" })
  
  get("/directors/youngest", { :controller => "directors", :action => "max_dob" })
  
  get("/directors/eldest", { :controller => "directors", :action => "min_dob" })
  
  get("/directors/:path_id", { :controller => "directors", :action => "show" })
  # new 
  get("/delete_director/:path_id", { :controller => "directors", :action => "destroy" })

  get("/insert_director", { :controller => "directors", :action => "create" })

  get("/modify_director/:path_id", { :controller => "directors", :action => "update" })

  # Movies routes
  get("/movies", { :controller => "movies", :action => "index" })

  get("/movies/:path_id", { :controller => "movies", :action => "show" })
  
  #  new
  get("/delete_movie/:path_id", { :controller => "movies", :action => "destroy" })

  get("/insert_movie", { :controller => "movies", :action => "create" })

  get("/modify_movie/:path_id", { :controller => "movies", :action => "update" })
  # Actor routes
  
  get("/actors", { :controller => "actors", :action => "index" })
  
  get("/actors/:path_id", { :controller => "actors", :action => "show" })
  # new
  get("/insert_actor", { :controller => "actors", :action => "create" })
  
  get("/modify_actor/:path_id", { :controller => "actors", :action => "update" })
  
  get("/delete_actor/:path_id", { :controller => "actors", :action => "destroy" })
  
  # Character routes
  get("/insert_character", { :controller => "characters", :action => "create" })

end
