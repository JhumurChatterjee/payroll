class Subdomain
  def self.matches?(request)
    request.subdomain.present? && request.subdomain != "www"
  end
end

Rails.application.routes.draw do
  resources :documents do
    get :history
  end
    resources :bookings do
      get :history
    end
  root "home#index"
  resources :workplaces, only: [:new, :create]

  constraints Subdomain do
    resources :departments
  end
end
