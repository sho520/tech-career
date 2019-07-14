Rails.application.routes.draw do

  devise_for :advisors, controllers: {
    sessions:      'advisors/sessions',
    passwords:     'advisors/passwords',
    registrations: 'advisors/registrations'
  }
  devise_for :students, controllers: {
    sessions:      'students/sessions',
    passwords:     'students/passwords',
    registrations: 'students/registrations'
  }
  root to: 'jobs#index'
  resources :jobs









  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
