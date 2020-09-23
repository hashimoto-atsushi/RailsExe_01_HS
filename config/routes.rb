Rails.application.routes.draw do
  resources :comments do
    collection do
      post :confirm
    end
  end
end
