Rails.application.routes.draw do
  get 'sporting/list', to: 'sporting#list'

  get 'sporting/:id', to: 'sporting#show', as: :show_player

  root to: 'static_pages#home'

  get '/about', to: 'static_pages#about'

  get '/team', to: 'static_pages#team'

  get '/conditions', to: 'static_pages#conditions'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
