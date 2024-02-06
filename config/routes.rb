Rails.application.routes.draw do
  get("/", { :controller =>"dices", :action =>"homepage" })

  get("/dice/:zebra/:sides", { :controller => "dices", :action => "dynamic"})
end
