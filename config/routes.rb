Rails.application.routes.draw do
  resources :dogs
  resources :dietary_restrictions
  resources :medications
  resources :appointments
  resources :vaccinations
end
