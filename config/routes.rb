class Subdomain
  def self.matches?(request)
    request.subdomain.present? && request.subdomain != "www"
  end
end

Rails.application.routes.draw do
  root "home#index"
  resources :workplaces, only: [:new, :create], constraints: { subdomain: "www" } do
    member do
      get :create_admin
      post :create_admin_user
    end
  end

  constraints Subdomain do
    namespace :admin do
      get 'dashboard', to: 'admin#dashboard'
      resources :departments
    end
  end
end
