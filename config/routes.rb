Rails.application.routes.draw do
  get '/dashboard', to: 'dashboard#home'
  scope :dashboard do
    get '/edit_texts', to: 'dashboard#edit_texts', as: :edit_text
    put '/edit_texts', to: 'dashboard#update_texts', as: :update_text
    resources :videos, except: [:show]
  end
  devise_for :admins, skip: [:sessions]
  devise_scope :admin do
    get '/signin', to: 'admins/sessions#new', as: :new_admin_session
    post '/sigin', to: 'admins/sessions#create', as: :admin_session
    delete '/sigout', to: 'admins/sessions#destroy', as: :admin_session_destroy
  end
  get '/home', to: 'static_pages#home'
  root to: 'static_pages#home'
  get '/services', to: 'static_pages#services'
  get '/blog', to: 'static_pages#blog'
  get '/contact', to: 'static_pages#contact'
  get '/test', to: 'static_pages#test'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
