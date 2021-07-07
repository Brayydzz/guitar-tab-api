Rails.application.routes.draw do


  #  Adds in /api/vi to all routes within scope
  scope "/api/v1" do
    resources :tracks
    resources :tunings
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
