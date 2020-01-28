Rails.application.routes.draw do
  #devise
  devise_for :users
  get '/users/sign_out' => 'devise/sessions#destroy'


  #homes
  get '/' => 'homes#top'



  #blogs
  get 'blogs' => 'blogs#new'
  post 'blogs' => 'blogs#create'
  get 'index' => 'blogs#index'
  get 'blogs/:id' => 'blogs#show', as: 'blog'
  get 'blogs/:id/edit' => 'blogs#edit', as: 'edit_blog'
  patch 'blogs/:id' => 'blogs#update', as:'update_blog'
  delete 'blogs/:id' => 'blogs#destroy', as:'destroy_blog'







end
