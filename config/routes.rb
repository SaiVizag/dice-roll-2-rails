Rails.application.routes.draw do
  get("/", { :controller => "game", :action => "main_header" })
  get("/2d6", { :controller => "game", :action => "two_six" })
  get("/2d10", { :controller => "game", :action => "two_ten" })
  get("/1d20", { :controller => "game", :action => "one_twenty" })
  get("/5d4", { :controller => "game", :action => "five_four" })
end
