Rails.application.routes.draw do
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

#1. List tasks
get "/tasks" => "tasks#index"

#2. View Tasks
get "/tasks/:id" => "tasks#show"

#3. Add Tasks
get "tasks/new" => "tasks#new"
post "tasks" => "tasks#create"

#4. Edit Tasks
get "tasks/:id/edit", to: "tasks#edit"
patch "tasks/:id", to: "tasks#update"

#5. Destroy Tasks
delete "tasks/:id", to: "tasks#destroy"


end
