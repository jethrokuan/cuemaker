Cuemaker::Application.routes.draw do
  resources :cues

  root to: "cues#index"
end
