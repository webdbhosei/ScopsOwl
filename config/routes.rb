Rails.application.routes.draw do

  resources :timetables
  get 'chatrooms/show_chat'
  get 'chatrooms/exit_chat'

  post '/messages' => 'messages#chat_create'
  resources :chatrooms do
    resource :chatroom_users
    resources :messages
  end
  get "/eba_answers" => redirect("eba/index")
  get "/eba_questions" => redirect("eba/index")
  mount ActionCable.server => '/cable'
  resources :eba_answers
  resources :eba_questions do
    member do
      get :list
      get :add
    end
  end
  resources :ht_favorites
  resources :ht_routes
  resources :gr_fileserver_contents
  resources :chat_groups
  resources :chat_messages
  resources :rh21_posts
  resources :rh21_threads
  resources :rh21_roles
  resources :rh21_languages
  resources :rh21_statuses
  resources :ik_categories
  resources :ik_memos

  get 'daizu39/index'
  get 'eba/index'
  get 'eba/showall'
  get 'eba/sort'
  get 'eba/search'
  post 'eba/search'
  get 'chat2/index'
  get 'okane/index'

  resources :smpl_chats
  devise_for :users
  resources :users
  get 'guterise_fileserver/index'
  get 'gr_fileserver_content/file_content' => 'gr_fileserver_content#file_content'
  get 'download' => 'gr_fileserver_contents#download', :as => 'download'
  get 'likes' => 'rh21_threads#likes', :as => 'likes'
  get 'dislikes' => 'rh21_threads#dislikes', :as => 'dislikes'

  get 'chat/index'
  post 'chat/index'

  get 'rh21_thread/index'
  get 'ikuo/sample'
  get 'hitme/index'
  get 'hitme/traffic_list'
  get 'ht_routes_list', :to => 'ht_routes#index'
  post 'ht_favorites/create/:id' => 'ht_favorites#create'
  post 'ht_favorites/destroy/:id' => 'ht_favorites#destroy'
  get 'welcome/index'

  root to: 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
