Rails.application.routes.draw do
  resources :products
  root 'home#index'
  
  get 'guides/submit' => 'home#submit'
  get 'home/tool' => 'home#tool'
  get 'home/show' => 'home#show'
  get 'home/profile' => 'home#profile'
  get 'home/trial'  => 'home#trial'
  
  post 'home/state' => 'home#state_update'
  post 'home/preview' => 'home#preview'
  
  delete "home/:id/destroy" => 'home#destroy', as: :destroy
  patch "home/concept/:board_id" => 'home#update_concept'
  
  post 'create_board' => 'home#create_board'
  post 'home/create_upload' => 'home#create_upload'
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
