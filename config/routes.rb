Rails.application.routes.draw do
  resources :apps, param: :token, except: :destroy

  root "apps#index"
end
