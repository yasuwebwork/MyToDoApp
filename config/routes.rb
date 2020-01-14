Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #root 'tasks#index'
  get  'tasks' => 'tasks#index'
  post 'tasks' => 'tasks#store' , as: 'tasks_store'
  get  'tasks/done/:id' => 'tasks#done' , as: 'tasks_done'
  get  'tasks/:id' => 'tasks#show', as: 'tasks_show'
end
