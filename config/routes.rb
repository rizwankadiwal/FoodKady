Rails.application.routes.draw do
  devise_for :customers
  namespace :admin do
    devise_for :super_users, controller:
      {session: 'admin/sessions'}
    resources :categories_products
    resources :categories
    resources :products

    root controller: :dashboard, action: :index
  end

  root controller: :application, action: :index

end
