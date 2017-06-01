Rails.application.routes.draw do
  get 'eba/index'

  get 'chat2/index'

  get 'ikuo/sample'

  get 'welcome/index'

  root to: 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
