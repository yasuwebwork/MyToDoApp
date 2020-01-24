Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #root 'tasks#index'
  get  'tasks' => 'tasks#index'
  put 'tasks/:id' => 'tasks#store' , as: 'tasks_store'
  get  'tasks/done/:id' => 'tasks#done' , as: 'tasks_done'
  get  'tasks/:id' => 'tasks#show', as: 'tasks_show'
end
