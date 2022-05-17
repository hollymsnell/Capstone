Rails.application.routes.draw do
###exercise routes
get "/exercises" => "exercises#index"
post "/exercises" => "exercises#create"
get "/exercises/:id" => "exercises#show"
patch "/exercises/:id" => "exercises#update"
delete "/exercises/:id" => "exercises#destroy"

###user routes
get "/users" => "users#index"
post "/users" => "users#create"
get "/users/:id" => "users#show"
patch "/users/:id" => "users#update"
delete "/users/:id" => "users#destroy"

###session routes
post "/sessions" => "sessions#create"

###program routes
get "/programs" => "programs#index"
post "/programs" => "programs#create"
get "/programs/:user_id" => "programs#show"
patch "/programs/:id" => "programs#update"
delete "/programs/:id" => "programs#destroy"

###exercise_program routes
get "/exercise_programs" => "exercise_programs#index"
post "/exercise_programs" => "exercise_programs#create"
get "/exercise_programs/:id" => "exercise_programs#show"
patch "/exercise_programs/:id" => "exercise_programs#update"
delete "/exercise_programs/:id" => "exercise_programs#destroy"

###twilio route
post "/textremind" => "twilio#create"
end
