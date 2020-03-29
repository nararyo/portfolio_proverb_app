Rails.application.routes.draw do
  root to: "proverbs#index"
  get 'proverbs/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
