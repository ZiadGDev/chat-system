Rails.application.routes.draw do
  resources :apps, param: :token, except: :destroy do
    resources :chats, param: :number, except: [:update, :destroy] do
      resources :messages, param: :number, except: :destroy
    end
  end

  root "apps#index"
end
