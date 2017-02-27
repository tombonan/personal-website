Rails.application.routes.draw do
  resources :static_pages
  root 'static_pages#home'
  get 'portfolio' => 'static_pages#portfolio'

  scope do
    resources :writings, path: 'writing'
    resources :nyrbs, path: 'nyrb'
  end
  
  resources :recipes
end
