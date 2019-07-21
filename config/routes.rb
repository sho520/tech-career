Rails.application.routes.draw do

  devise_for :advisors, controllers: {
    sessions:      'advisors/sessions',
    passwords:     'advisors/passwords',
    registrations: 'advisors/registrations'
  }
  resources :advisors do
    get 'students', to: 'advisors#students', on: :collection   #生徒一覧ページ
  end
  devise_for :students, controllers: {
    sessions:      'students/sessions',
    passwords:     'students/passwords',
    registrations: 'students/registrations'
  }
  root to: 'jobs#index'    # TOPページ
  resources :jobs do
    resources :students, only: [:show]  #生徒idの企業詳細ページ
    get 'all', to: 'jobs#all', on: :collection   #job一覧ページ
  end
  resources :students, only: [:show]
  get "advisors/:id" => "advisors#show"  #CAのmy page


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
