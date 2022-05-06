Rails.application.routes.draw do
###exercise routes
get "/exercises" => "exercises#index"
post "/exercises" => "exercises#create"
get "/exercises/:id" => "exercises#show"
patch "/exercises/:id" => "exercises#update"
delete "/exercises/:id" => "exercises#destroy"

###user routes
post "/users" => "users#create"

###session routes
post "/sessions" => "sessions#create"

###program routes
get "/programs" => "programs#index"
post "/programs" => "programs#create"
get "/programs/:id" => "programs#show"

###exercise_program routes
get "/exercise_programs" => "exercise_programs#index"
post "/exercise_programs" => "exercise_programs#create"
delete "/exercise_programs/:id" => "exercise_programs#destroy"
end
