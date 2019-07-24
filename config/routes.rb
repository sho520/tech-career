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
  root to: 'chats#index'    # TOPページ
  resources :jobs do
    resources :students, only: [:show]  do #生徒idの企業詳細ページ
      # get 'keep', to: 'jobs#keep', on: :collection
      # get 'apply', to: 'jobs#apply', on: :collection
    end
    get 'all', to: 'jobs#all', on: :collection   #job一覧ページ
    get 'keep', to: 'jobs#keep', on: :member     #jobの選考状況を検討中へ変更(生徒のmyページにて)
    get 'apply', to: 'jobs#apply', on: :member   #jobの選考状況を応募へ変更(生徒のmyページにて)
    get 'consider', to: 'jobs#consider', on: :member   #jobの選考状況を検討中へ変更(生徒のmyページにて)
    get 'decline', to: 'jobs#decline', on: :member   #jobの選考状況を検討中へ変更(生徒のmyページにて)
    get 'change', to: 'jobs#change', on: :member #jobの選考状況を変更(求人詳細にて)
    get 'state', to: 'jobs#state', on: :member   #jobの応募状況を変更(求人詳細にて)
  end
  resources :students, only: [:show,:edit,:update,:destroy] do
    get 'ca', to: 'students#ca', on: :member     #CAが未登録の場合、自分がCAになる
  end
  get "advisors/:id" => "advisors#show"  #CAのmy page

  resources :chats , only: [:index, :create]



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
