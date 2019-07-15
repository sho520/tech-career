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
  root to: 'jobs#index'    # TOPページ
  resources :jobs do
    resources :students, only: [:show]  #生徒idの企業詳細ページ
    resources :advisors, only: [:show]  #CAidの企業詳細ページ
  end
  get "students/:id" => "students#show"  #生徒のmy page
  get "advisors/:id" => "advisors#show"  #CAのmy page







  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
