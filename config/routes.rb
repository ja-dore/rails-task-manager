Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'tasks', to: 'tasks#index'
  # new moet voor :id gedefineerd worden, anders gaat die id als new zien. dus meest precieze vanboven.

  get 'tasks/new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create'

  get 'tasks/:id', to: 'tasks#show', as: :task

  delete 'tasks/:id', to: 'tasks#destroy'

  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit
  patch 'tasks/:id', to: 'tasks#update'
end
