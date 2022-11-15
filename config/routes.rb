Rails.application.routes.draw do


  delete "tasks/:id", to: "tasks#destroy", as: :delete_task
  get "tasks/:id/edit", to: "tasks#edit", as: :edit_task #editatask
  patch "tasks/:id", to: "tasks#update"
  get "tasks/new", to: "tasks#new"  #making a new task
  post "tasks", to: "tasks#create"
  get "tasks", to: "tasks#index"
  get "tasks/:id", to: "tasks#show", as: :task


end


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # add two routes to handle the creation of a task
  # one route is to display the task form
  #the other route is to handle the POST request generated when submitting the form

  # add two routes for update
  # need to be able to edit a task--changing its title, its details and marking it as completed
