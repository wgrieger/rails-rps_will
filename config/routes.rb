Rails.application.routes.draw do
  get("/", {:controller => "pages", :action => "main"})
  get("/rock", {:controller => "pages", :action => "rock_result"})
  get("/paper", {:controller => "pages", :action => "paper_result"})
  get("/scissors", {:controller => "pages", :action => "scissors_result"})
end
