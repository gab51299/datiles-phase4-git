Rails.application.routes.draw do
  root to: 'personals'
  resources :rewardtables
  resources :idtables
  resources :personals

  get 'join', to: 'personals#join', as: 'joinp'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
