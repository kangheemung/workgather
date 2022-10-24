Rails.application.routes.draw do
  #top
  root 'home#top'

  get 'home/select_position'=>'home#select_position'
  get 'home/select_position_E'=>'home#select_position_E'
  get 'home/select_position_K'=>'home#select_position_K'
  get 'home/about'=>'home#about'
  #参加者ログイン
  get 'login' => 'user_sessions#new',as:'login'
  post 'login' => 'user_sessions#create',as:'login_create'
  post 'logout' => 'user_sessions#destroy'
  get 'sessions/new'=>'sessions#new'
  #開催者ログイン
  get 'planners/login_form' => 'planner_sessions#new',as:'planners_login'
  post 'planners/login' => 'planner_sessions#create',as:'planners_login_create'
  post 'logout' => 'planners#destroy'
  #投稿
  get 'posts/index'=>'posts#index'
  get 'posts/new'=>'posts#new'
  post'posts/create'=>'posts#create'
  get 'posts/:id/update'=>'posts#update'
  get 'posts/:id/edit' => 'posts#edit'
  delete 'posts/:id/destroy'=>'posts#destroy'
  get 'posts/:id'=>'posts#show'
  #参加者会員登録
  get "users/index" => "users#index"
  get 'users/new'=>'users#new', as:'signup'
  post 'users/create'=>'users#create',as:'users'
  get "users/:id/edit" => "users#edit"
  post "users/:id/update" => "users#update"
  get "users/:id" => "users#show"
  #開催者会員登録
  get 'planners/new'=> 'planners#new'
  get 'planners/index'=>'planners#index',as:'planners_index'
  post'planners/create'=>'planners#create',as:'planners_create'
  get 'planeners/:id/edit' => 'planners#edit'
  post 'planners/:id/update' => 'planners#update'
  get 'planners/:id' => 'planners#show'
  #album
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
