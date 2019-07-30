Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'tasks', to: 'tasks#index', as: :tasks_index
  get 'tasks/show/:id', to: 'tasks#show', as: :tasks_show

  get 'tasks/new', to: 'tasks#add', as: :tasks_add
  post 'tasks', to: 'tasks#create', as: :tasks_create

  get "tasks/:id/edit", to: "tasks#edit", as: :tasks_edit
  patch "tasks/:id", to: "tasks#update", as: :tasks_update

  delete "tasks/:id", to: "tasks#destroy", as: :tasks_destroy
end
