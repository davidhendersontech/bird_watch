Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get '/birds/:id/move/', to: 'birds#move' 
  # TODO : FINISH BIRD MOVE METHOD ALMOST DONE
  resources :birds
  resources :trees

end
