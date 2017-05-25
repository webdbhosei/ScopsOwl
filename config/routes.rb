Rails.application.routes.draw do
  get 'guterise_fileserver/index'

  get 'chat/index'
  post 'chat/index'

  get 'rh21_qpage/index'

  get 'ikuo/sample'

  get 'welcome/index'

  root to: 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
