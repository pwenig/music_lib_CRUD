Rails.application.routes.draw do

  root to: 'albums#index'
  resources :albums do
    resources :singles
  end

  resources :artists

end
