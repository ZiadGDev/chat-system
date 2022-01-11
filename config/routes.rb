Rails.application.routes.draw do
  resources :apps, param: :token, except: :destroy do
    resources :chats, param: :number, except: [:update, :destroy]
  end

  root "apps#index"
end
