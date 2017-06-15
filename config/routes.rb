Rails.application.routes.draw do
  resources :chat_groups
  resources :chat_messages
  resources :ik_categories
  resources :ik_memos
  get 'eba/index'
  get 'chat2/index'
  get 'okane/index'

  resources :smpl_chats
  devise_for :users
  resources :users
  get 'guterise_fileserver/index'

  get 'chat/index'
  post 'chat/index'

  get 'rh21_qpage/index'
  get 'ikuo/sample'
  get 'hitme/index'
  get 'hitme/traffic_list'
  get 'welcome/index'

  root to: 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
