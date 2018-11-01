Rails.application.routes.draw do
  resources :static_pages
  root 'static_pages#home'
  resources :projects

  scope do
    resources :writings, path: 'writing'
  end
end
