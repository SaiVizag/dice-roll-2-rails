require "better_errors"
require "binding_of_caller"

Rails.application.routes.draw do
  get("/", { :controller => "game", :action => "main_header" })
  get("/dice/2/6", { :controller => "game", :action => "two_six" })
  get("/dice/2/10", { :controller => "game", :action => "two_ten" })
  get("/dice/1/20", { :controller => "game", :action => "one_twenty" })
  get("/dice/5/4", { :controller => "game", :action => "five_four" })
end
