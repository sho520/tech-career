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
    resources :students, only: [:show]  do #生徒idの企業詳細ページ
      # get 'keep', to: 'jobs#keep', on: :collection 
      # get 'apply', to: 'jobs#apply', on: :collection
    end
    get 'all', to: 'jobs#all', on: :collection   #job一覧ページ
    get 'keep', to: 'jobs#keep', on: :member
    get 'apply', to: 'jobs#apply', on: :member
  end
  resources :students, only: [:show,:edit,:update,:destroy]
  get "advisors/:id" => "advisors#show"  #CAのmy page


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
