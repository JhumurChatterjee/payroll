Rails.application.routes.draw do
  root "home#index"
  resources :organizations do
    member do
      post :create_user
      get :new_user
    end
  end
end
