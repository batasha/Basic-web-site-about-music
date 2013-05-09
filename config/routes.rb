JukeBox::Application.routes.draw do

  root :to => "bands#index"

  resources :bands
  resources :albums
  resources :tracks
  resources :songs
  resources :artists
  resources :band_memberships

end
