Videostiabotas::Application.routes.draw do
  resources :videos

  resources :characters do
    resources :videos
  end

  resources :categories do
    resources :videos
  end

  devise_for :users

  root :to => "videos#index"
end
