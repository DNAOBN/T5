Rails.application.routes.draw do
  resources :docentes
  resources :identidades
  resources :disciplinas
  root "main#index"
  
  resources :discentes

end
