Rails.application.routes.draw do
  get 'home/index'
  get 'words/new'
  post 'words/create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
