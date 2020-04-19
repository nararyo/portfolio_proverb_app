Rails.application.routes.draw do
  root to: "proverbs#index"
  get "proverbs/anxious", to: "proverbs#anxious"
  get "proverbs/depress", to: "proverbs#depress"
  get "proverbs/tired", to: "proverbs#tired"
  get "proverbs/other", to: "proverbs#other"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
