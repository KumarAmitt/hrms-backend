Rails.application.routes.draw do

  devise_for :users, path: '', path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    registration: 'signup'
  },
  controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  get '/current_user', to: 'current_user#index'
  get '/user_signed_in', to: 'current_user#user_signed_in'

  resources :announcements, only: %i[index create]
  resources :attendances, only: %i[index show create]

end
