Rails.application.routes.draw do

  root 'application#index'

  resources :courses do
    collection do
      get 'classrooms' , to: 'courses#classrooms' , as: :classrooms
    end
  end
  resources :students do
    member do
      get 'assign', to: 'students#assign_course', as: :assign_course
      get 'assign/:id_course' ,to: 'students#confirm_assign', as: :confirm_assign
    end
  end

end
