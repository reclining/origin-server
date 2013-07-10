AdminConsole::Engine.routes.draw do
  id_regex = /[^\/]+/
  root :to => "index#index", :via => :get, :as => :admin_console
  get "search", to: "search#index"
  resources :stats, :only => [:index, :show]
  resources :users, :only => [:show], :id => id_regex
  resources :applications, :only => [:show], :id => /.+/
  resources :gears, :only => [:show], :id => id_regex
  resources :nodes, :only => [:show], :id => id_regex
end
