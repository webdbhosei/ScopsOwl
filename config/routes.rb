Rails.application.routes.draw do
  get 'chat/index'
  post 'chat/index'

  get 'ikuo/sample'
  
  get 'hitme/index'

  get 'welcome/index'

  root to: 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
