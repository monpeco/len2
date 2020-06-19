Rails.application.routes.draw do
  get 'home/login'
  post 'home/signin'
  get 'home/signin'  # in case of reload
  get 'home/feed'
  get 'home/new'
  post 'home/create'
  get 'home/review'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
