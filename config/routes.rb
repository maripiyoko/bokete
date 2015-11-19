Rails.application.routes.draw do
  devise_for :users
  root 'home#boke'

  namespace :my do
    resources :topics, path: 'odai' do
      resources :answers, path: 'boke' do
        resources :comments
      end
    end
  end

  with_options controller: :home do |h_c|
    h_c.get "odai", to: :odai
    h_c.get "boke", to: :boke
  end
end
