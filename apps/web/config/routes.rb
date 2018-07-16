resources :tasks, only: [:index, :new, :create, :edit, :update, :destroy]
get '/tasks/:id', to: 'tasks#show'
