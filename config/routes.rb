Rails.application.routes.draw do
  get '/home', to: 'static_pages#home'
  root to: 'static_pages#home'
  get '/about', to: 'static_pages#about'
  get '/services', to: 'static_pages#services'
  get '/blog', to: 'static_pages#blog'
  get '/contact', to: 'static_pages#contact'
  get '/test', to: 'static_pages#test'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
