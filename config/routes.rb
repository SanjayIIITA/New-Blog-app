Rails.application.routes.draw do
  #this is special routes devise_for :users used for login signup and all look in user model
  devise_for :users
  
  #left-side is controller name and # right side is action name
  resources :blog_posts # it contain all six routes

  # get '/blog_posts/new', to: "blog_posts#new", as: :new_blog_post
  # get '/blog_posts/:id', to: "blog_posts#show", as: :blog_post
  # patch '/blog_posts/:id', to: "blog_posts#update"
  # delete '/blog_posts/:id', to: "blog_posts#destroy"
  # get '/blog_posts/:id/edit', to: "blog_posts#edit", as: :edit_blog_post
  # post '/blog_posts', to: "blog_posts#create", as: :blog_posts
  

  root "blog_posts#index"
end
