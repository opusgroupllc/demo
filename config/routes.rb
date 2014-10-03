Rails.application.routes.draw do

  resources :articles do
    resources :comments
  end

  resources :departments do
    resources :employees
  end

  root to: 'welcome#index'

end
