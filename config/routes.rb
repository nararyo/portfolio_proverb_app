Rails.application.routes.draw do
  root to: "proverbs#index"
  #resources :proverbs
  get "proverbs/feel", to: "proverbs#show"
  #get "proverbs/depress", to: "proverbs#show"
  #get "proverbs/tired", to: "proverbs#show"
  #get "proverbs/other", to: "proverbs#show"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
