Rails.application.routes.draw do
  get 'companyuser/index'
  get 'companyadmin/index'
  #get 'admin/index'
 # devise_for :users
 # root 'dashboard#index'

  get 'admin' => 'admin#index'
  get 'companyadmin' => 'companyadmin#index'
  get 'companyuser' => 'companyuser#index'


   devise_for :users, :controllers => { :registrations => "registrations", :invitations => 'users/invitations' }

   devise_scope :user do
     get "invite_user", :to => "users/invitations#new"
     get "/users/change_account(.:format)", :to=>"registrations#change_account"
    authenticated :user do
      root 'dashboard#index', as: :authenticated_root
    end
    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
