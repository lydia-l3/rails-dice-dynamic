Rails.application.routes.draw do
  get("/", { :controller => "dice", :action => "apple" })
  
  get("/dice/:one/:two", {:controller => "dice", :action => "banana" })
end
