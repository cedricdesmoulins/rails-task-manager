Rails.application.routes.draw do
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

#1. List tasks
get "/tasks" => "tasks#index"

#3. Add Tasks
get "tasks/new" => "tasks#new", as: :new
post "tasks" => "tasks#create"

#2. View Tasks
get "/tasks/:id" => "tasks#show", as: :task

#4. Edit Tasks
get "tasks/:id/edit", to: "tasks#edit", as: :edit
patch "tasks/:id", to: "tasks#update"

#5. Destroy Tasks
delete "tasks/:id", to: "tasks#destroy", as: :destroy
end
