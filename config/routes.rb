Rails.application.routes.draw do
  get 'home/login'
  post 'home/signin'
  get 'home/signin'  # in case of reload
  get 'home/index'
  get 'words/new'
  post 'words/create'
  get 'words/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
