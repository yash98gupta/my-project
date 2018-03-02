Rails.application.routes.draw do

  get 'comments/new/:id' => "comments#new" , as: "comments_new"
  post 'comments/create' => "comments#create", as: "comments"

  get 'nestedcomments/new/(:comment_id)' => "nestedcomments#new" , as: "nestedcomments_new"
  post 'nestedcomments/create' => "nestedcomments#create", as: "nestedcomments"

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
get 'posts/show_user_posts'
  resources :posts #do
    #resources :comments
  #end
root 'home#index'
get 'home/about'


end
