Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  resources :videos
  resources :video_genres

  get '/video_genres/:genre_id', to: 'videos#show' #as: 'video'

  # get "videos/show" => "videos#show"


  root "videos#index"
end
